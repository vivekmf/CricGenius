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
                            .overlay(Circle().stroke(Color.green))
                            .padding(.bottom, 0)
                        
                        Text(matchSchedule.homeTeam.shortName)
                            .font(.system(size: 12))
                            .foregroundStyle(Color.black)
                            .padding(.bottom, 2)
                        
                        Text("VS")
                            .font(.system(size: 12))
                            .foregroundStyle(Color.gray)
                            .padding(.bottom, 2)
                        
                        Image(matchSchedule.awayTeam.flagImage)
                            .resizable()
                            .frame(width: 32, height: 32)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.red))
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
                            .foregroundStyle(Color.black)
                            .padding(.bottom, 15)
                        
                        Text(matchSchedule.date)
                            .font(.system(size: 12))
                            .foregroundStyle(Color.gray)
                        
                        Text("Venue: \(matchSchedule.venue)")
                            .font(.system(size: 12))
                            .foregroundStyle(Color.gray)
                            .multilineTextAlignment(.trailing)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(maxWidth: 150, maxHeight: .infinity, alignment: .trailing)
                            .padding(.top, 2)
                    }
                    .padding(20)
                    .padding(.leading, -30)
                }
                .background(Color.white)
                .cornerRadius(16)
                .presentationCornerRadius(28)
            }
        }
    }
}

#Preview{
    CricGeniusHomeView()
}
