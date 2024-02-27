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
    
    var team1: String
    var team2: String
    var homeTeamImage: String
    var awayTeamImage: String
    var matchTime: String
    var matchDate: String
    var venue: String
    var dayNight: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        if let time = formatter.date(from: matchTime) {
            // Assuming daytime is before 6 PM
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: time)
            return hour < 18 ? "Day/Night" : "Night"
        }
        return "Day/Night"
    }
    var tossWinner: String = "Chennai Super Kings"
    var tossDecision: String = "field"
    var country: String = "India"
    
    var body: some View {
        NavigationLink(destination: WinnerPredictionView(team1: team1, team2: team2, tossWinner: tossWinner, dayNight: dayNight, tossDecision: tossDecision, venue: venue, country: country)) {
            VStack(alignment:.leading) {
                HStack {
                    VStack(alignment:.center) {
                        Image(homeTeamImage)
                            .resizable()
                            .frame(width: 32, height: 32)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.gray))
                            .padding(.bottom, 0)
                        
                        Text(team1)
                            .font(.system(size: 12))
                            .foregroundStyle(Color.black)
                            .padding(.bottom, 2)
                        
                        Text("VS")
                            .font(.system(size: 12))
                            .foregroundStyle(Color.gray)
                            .padding(.bottom, 2)
                        
                        Image(awayTeamImage)
                            .resizable()
                            .frame(width: 32, height: 32)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.gray))
                            .padding(.bottom, 0)
                        
                        Text(team2)
                            .font(.system(size: 12))
                            .foregroundStyle(Color.black)
                            .padding(.bottom, 2)
                    }
                    .padding(15)
                    
                    Spacer()
                    
                    VStack(alignment:.trailing) {
                        Text(matchTime)
                            .font(.system(size: 18))
                            .bold()
                            .foregroundStyle(Color.black)
                            .padding(.bottom, 15)
                        
                        Text(matchDate)
                            .font(.system(size: 12))
                            .foregroundStyle(Color.gray)
                        
                        Text("Venue: \(venue)")
                            .font(.system(size: 12))
                            .foregroundStyle(Color.gray)
                            .multilineTextAlignment(.trailing)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(maxWidth: 150, maxHeight: .infinity, alignment: .trailing) // Set maxHeight to .infinity for equal height
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
