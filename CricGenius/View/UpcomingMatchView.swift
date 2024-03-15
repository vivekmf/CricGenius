//
//  UpcomingMatchView.swift
//  CricGenius
//
//  Created by Vivek Singh on 23/02/24.
//

import Foundation
import SwiftUI

struct UpcomingMatch: Identifiable {
    var id = UUID()
    var team1: String
    var team2: String
    var homeTeamImage: String
    var awayTeamImage: String
    var matchTime: String
    var matchDate: String
    var venue: String
}

struct UpcomingMatchView: View {
    
    var matchSchedule: UpcomingMatchSchedule
    
    var body: some View {
        NavigationLink(destination: UpcomingMatchDetailView(matchSchedule: matchSchedule)) {
            VStack(alignment:.leading) {
                HStack {
                    VStack(alignment:.center) {
                        Image(matchSchedule.homeTeam.flagImage)
                            .resizable()
                            .frame(width: 32, height: 32)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color(matchSchedule.awayTeam.teamColor)))
                            .padding(.bottom, 0)
                        
                        Text(matchSchedule.homeTeam.shortName)
                            .font(.system(size: 12))
                            .foregroundStyle(Color.black)
                            .padding(.bottom, 2)
                        
                        Text("VS")
                            .font(.system(size: 12))
                            .foregroundStyle(Color.white)
                            .bold()
                            .padding(.bottom, 2)
                        
                        Image(matchSchedule.awayTeam.flagImage)
                            .resizable()
                            .frame(width: 32, height: 32)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color(matchSchedule.homeTeam.teamColor)))
                            .padding(.bottom, 0)
                        
                        Text(matchSchedule.awayTeam.shortName)
                            .font(.system(size: 12))
                            .foregroundStyle(Color.black)
                            .padding(.bottom, 2)
                    }
                    .padding(15)
                    
                    Spacer()
                    
                    VStack(alignment:.trailing) {
                        Text(matchSchedule.time)
                            .font(.system(size: 18))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.bottom, 15)
                        
                        Text(CommonFunctions.formattedDate(dateString: matchSchedule.date))
                            .font(.system(size: 12))
                            .foregroundStyle(Color.white)
                            .bold()
                        
                        Text("Venue: \(matchSchedule.venue)")
                            .font(.system(size: 12))
                            .foregroundStyle(Color.white)
                            .bold()
                            .multilineTextAlignment(.trailing)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(maxWidth: 150, maxHeight: .infinity, alignment: .trailing)
                            .padding(.top, 2)
                    }
                    .padding(20)
                    .padding(.leading, -30)
                }
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color(matchSchedule.homeTeam.teamColor).opacity(1.0), Color(matchSchedule.awayTeam.teamColor).opacity(1.0)]), startPoint: .topLeading, endPoint: .bottomLeading)
                )
                .cornerRadius(16)
                .presentationCornerRadius(28)
            }
        }
    }
}

#Preview{
    CricGeniusHomeView()
}
