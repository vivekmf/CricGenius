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

func predictHeadToHead(matchSchedule: UpcomingMatchSchedule) -> IPLHeadToHeadOutput? {
    do {
        let headToHeadConfig = MLModelConfiguration()
        let headToHeadModel = try IPLHeadToHead(configuration: headToHeadConfig)
        let input = IPLHeadToHeadInput(Teams: "\(matchSchedule.homeTeam.name), \(matchSchedule.awayTeam.name)")
        let headToHeadOutput = try headToHeadModel.prediction(input: input)
        
        return headToHeadOutput
    } catch {
        print("Error making prediction: \(error)")
        return nil
    }
}

func predictHeadAndVenue(matchSchedule: UpcomingMatchSchedule) -> IPLHeadAndVenueOutput? {
    do {
        let headAndVenueConfig = MLModelConfiguration()
        let headAndVenueModel = try IPLHeadAndVenue(configuration: headAndVenueConfig)
        let input = IPLHeadAndVenueInput(Teams: "\(matchSchedule.homeTeam.name), \(matchSchedule.awayTeam.name)", Venue: matchSchedule.venue)
        let headAndVenueOutput = try headAndVenueModel.prediction(input: input)
        
        return headAndVenueOutput
    } catch {
        print("Error making prediction: \(error)")
        return nil
    }
}

func predictHeadAndPlayers(matchSchedule: UpcomingMatchSchedule) -> IPLHeadAndPlayersOutput? {
    do{
        let headAndPlayersConfig = MLModelConfiguration()
        let headAndPlayersModel = try IPLHeadAndPlayers(configuration: headAndPlayersConfig)
        let input = IPLHeadAndPlayersInput(Teams: "\(matchSchedule.homeTeam.name), \(matchSchedule.awayTeam.name)", Team1_Player_1: matchSchedule.homeTeam.players[0].shortName, Team1_Player_2: matchSchedule.homeTeam.players[1].shortName, Team1_Player_3: matchSchedule.homeTeam.players[2].shortName, Team1_Player_4: matchSchedule.homeTeam.players[3].shortName, Team1_Player_5: matchSchedule.homeTeam.players[4].shortName, Team1_Player_6: matchSchedule.homeTeam.players[5].shortName, Team1_Player_7: matchSchedule.homeTeam.players[6].shortName, Team1_Player_8: matchSchedule.homeTeam.players[7].shortName, Team1_Player_9: matchSchedule.homeTeam.players[8].shortName, Team1_Player_10: matchSchedule.homeTeam.players[9].shortName, Team1_Player_11: matchSchedule.homeTeam.players[10].shortName, Team2_Player_1: matchSchedule.awayTeam.players[0].shortName, Team2_Player_2: matchSchedule.awayTeam.players[1].shortName, Team2_Player_3: matchSchedule.awayTeam.players[2].shortName, Team2_Player_4: matchSchedule.awayTeam.players[3].shortName, Team2_Player_5: matchSchedule.awayTeam.players[4].shortName, Team2_Player_6: matchSchedule.awayTeam.players[5].shortName, Team2_Player_7: matchSchedule.awayTeam.players[6].shortName, Team2_Player_8: matchSchedule.awayTeam.players[7].shortName, Team2_Player_9: matchSchedule.awayTeam.players[8].shortName, Team2_Player_10: matchSchedule.awayTeam.players[9].shortName, Team2_Player_11: matchSchedule.awayTeam.players[10].shortName)
        
        let headAndPlayerOutput = try headAndPlayersModel.prediction(input: input)
        
        return headAndPlayerOutput
    } catch {
        print("Error making prediction: \(error)")
        return nil
    }
}

func predictHeadVenuePlayer(matchSchedule: UpcomingMatchSchedule) -> IPLHeadVenuePlayerOutput? {
    do {
        let headVenuePlayerConfig = MLModelConfiguration()
        let headVenuePlayerModel = try IPLHeadVenuePlayer(configuration: headVenuePlayerConfig)
        let input = IPLHeadVenuePlayerInput(Teams: "\(matchSchedule.homeTeam.name), \(matchSchedule.awayTeam.name)", Venue: matchSchedule.venue, Team1_Player_1: matchSchedule.homeTeam.players[0].name, Team1_Player_2: matchSchedule.homeTeam.players[1].name, Team1_Player_3: matchSchedule.homeTeam.players[2].name, Team1_Player_4: matchSchedule.homeTeam.players[3].name, Team1_Player_5: matchSchedule.homeTeam.players[4].name, Team1_Player_6: matchSchedule.homeTeam.players[5].name, Team1_Player_7: matchSchedule.homeTeam.players[6].name, Team1_Player_8: matchSchedule.homeTeam.players[7].name, Team1_Player_9: matchSchedule.homeTeam.players[8].name, Team1_Player_10: matchSchedule.homeTeam.players[9].name, Team1_Player_11: matchSchedule.homeTeam.players[10].name, Team2_Player_1: matchSchedule.awayTeam.players[0].name, Team2_Player_2: matchSchedule.awayTeam.players[1].name, Team2_Player_3: matchSchedule.awayTeam.players[2].name, Team2_Player_4: matchSchedule.awayTeam.players[3].name, Team2_Player_5: matchSchedule.awayTeam.players[4].name, Team2_Player_6: matchSchedule.awayTeam.players[5].name, Team2_Player_7: matchSchedule.awayTeam.players[6].name, Team2_Player_8: matchSchedule.awayTeam.players[7].name, Team2_Player_9: matchSchedule.awayTeam.players[8].name, Team2_Player_10: matchSchedule.awayTeam.players[9].name, Team2_Player_11: matchSchedule.awayTeam.players[10].name)
        
        let headVenuePlayerOutput = try headVenuePlayerModel.prediction(input: input)
        
        return headVenuePlayerOutput
    } catch {
        print("Error making prediction: \(error)")
        return nil
    }
}

struct PredictionView: View {
    @ObservedObject var selectedPlayersViewModel: SelectedPlayersViewModel
    let matchSchedule: UpcomingMatchSchedule
    
    var body: some View {
        VStack {
            let winner = predictHeadToHead(matchSchedule: matchSchedule)?.Winner
            let probability = predictHeadToHead(matchSchedule: matchSchedule)?.WinnerProbability
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
