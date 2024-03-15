//
//  PredictionView.swift
//  CricGenius
//
//  Created by Vivek Singh on 11/03/24.
//

import Foundation
import SwiftUI
import CoreML

func predictWinner(matchSchedule: UpcomingMatchSchedule) -> IPLTeamVenueTraningOutput? {
    do {
        let predictionConfig = MLModelConfiguration()
        let predictionModel = try IPLTeamVenueTraning(configuration: predictionConfig)
        let predictionData = try predictionModel.prediction(Teams: "\(matchSchedule.homeTeam.name), \(matchSchedule.awayTeam.name)", Venue: matchSchedule.venue)
        return predictionData
    } catch {
        return nil
    }
}

struct PredictionView: View {
    @ObservedObject var selectedPlayersViewModel: SelectedPlayersViewModel
    let matchSchedule: UpcomingMatchSchedule
    
    var body: some View {
        VStack {
            let winner = predictWinner(matchSchedule: matchSchedule)?.Winner
            let probability = predictWinner(matchSchedule: matchSchedule)?.WinnerProbability
            VStack {
                Text(matchSchedule.time)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.bottom, -25)
                
                HStack {
                    Image(matchSchedule.homeTeam.flagImage)
                        .resizable()
                        .frame(width: 120, height: 120)
                    
                    Text("V/S")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                        .padding(8)
                    
                    Image(matchSchedule.awayTeam.flagImage)
                        .resizable()
                        .frame(width: 120, height: 100)
                }
                
                Text(CommonFunctions.formattedDate(dateString: matchSchedule.date))
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top, -20)
                
                Text(matchSchedule.venue)
                    .font(.system(size: 14))
                    .bold()
                    .foregroundColor(.white)
            }
            .padding()
            .padding(.top, 35)
            .frame(maxWidth: .infinity)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(matchSchedule.homeTeam.teamColor), Color(matchSchedule.awayTeam.teamColor)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .shadow(color: Color.white.opacity(0.2), radius: 12, x: 0, y: 4)
            
            VStack {
                ForEach(probability?.sorted(by: { $0.value > $1.value }) ?? [], id: \.key) { team, probability in
                    if matchSchedule.homeTeam.name == team || matchSchedule.awayTeam.name == team {
                        HStack {
                            Image(team == matchSchedule.homeTeam.name ? matchSchedule.homeTeam.flagImage : matchSchedule.awayTeam.flagImage)
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                            Text("\(team == matchSchedule.homeTeam.name ? matchSchedule.homeTeam.shortName : matchSchedule.awayTeam.shortName)")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.white)
                            
                            if probability >= 0 && probability <= 1 {
                                let formattedProbability = formatProbability(probability)
                                Text(formattedProbability)
                                    .font(.title2)
                                    .bold()
                                    .foregroundColor(.white)
                            }
                        }
                        .padding(10)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(team == matchSchedule.homeTeam.name ? matchSchedule.homeTeam.teamColor : matchSchedule.awayTeam.teamColor))
                                .shadow(color: Color(team == matchSchedule.homeTeam.name ? matchSchedule.homeTeam.teamColor : matchSchedule.awayTeam.teamColor), radius: 12, x: 0, y: 0)
                        )
                    }
                }
                .padding(.top, 10)
                
                VStack {
                    Image(winner == matchSchedule.homeTeam.name ? matchSchedule.homeTeam.flagImage : matchSchedule.awayTeam.flagImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding(20)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(winner == matchSchedule.homeTeam.name ? matchSchedule.homeTeam.teamColor : matchSchedule.awayTeam.teamColor))
                                .shadow(color: Color(winner == matchSchedule.homeTeam.name ? matchSchedule.homeTeam.teamColor : matchSchedule.awayTeam.teamColor), radius: 12, x: 0, y: 0)
                        )
                        .padding()
                    
                    Text(winner ?? "")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)
                }
                .padding()
            }
            
            Spacer()
            
            VStack {
                GeometryReader { geometry in
                    HStack(spacing: 0) {
                        NavigationLink(destination: PlayingElevenView(matchSchedule: matchSchedule, selectedPlayersViewModel: selectedPlayersViewModel)) {
                            VStack {
                                Text("BACK")
                                    .font(.system(size: 18))
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical, 15)
                            .frame(width: (geometry.size.width) / 2)
                            .background(
                                RoundedRectangle(cornerRadius: 0, style: .continuous)
                                    .foregroundColor(matchSchedule.homeTeam.teamColor)
                                    .clipShape(
                                        RoundedCorner(corner: .bottomLeft, radius: 25)
                                    )
                            )
                        }
                        
                        NavigationLink(destination: CricGeniusHomeView()) {
                            VStack {
                                Text("HOME")
                                    .font(.system(size: 18))
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical, 15)
                            .frame(width: (geometry.size.width) / 2)
                            .background(
                                RoundedRectangle(cornerRadius: 0, style: .continuous)
                                    .foregroundColor(matchSchedule.awayTeam.teamColor)
                                    .clipShape(
                                        RoundedCorner(corner: .bottomRight, radius: 25)
                                    )
                            )
                        }
                    }
                }
            }
            .padding(.top, 20)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .background(Color(red: 0.13, green: 0.13, blue: 0.19))
        .ignoresSafeArea()
    }
}

func formatProbability(_ probability: Double) -> String {
    let roundedPercentage = Int((probability * 100).rounded())
    return "\(roundedPercentage)%"
}
