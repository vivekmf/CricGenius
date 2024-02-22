//
//  ContentView.swift
//  CricGenius
//
//  Created by Vivek Singh on 22/02/24.
//
import Foundation
import SwiftUI

struct CricGeniusHomeView: View {
    // Sample data for demonstration
    let scorecards = [
        Scorecard(matchDetail: "3rd ODI", seriesName: "Pak Tour of India 2024", teamAScore: 310, teamAWicket: 10, teamAOvers: "50.0", teamBScore: 145, teamBWicket: 1, teamBOvers: "18.0", needScore: "India Need 166 to win", teamAFlag: "profile_img", teamBFlag: "profile_img"),
        Scorecard(matchDetail: "1st Test", seriesName: "Eng Tour of Aus 2024", teamAScore: 200, teamAWicket: 4, teamAOvers: "40.0", teamBScore: 150, teamBWicket: 3, teamBOvers: "20.0", needScore: "India Need 51 to win", teamAFlag: "profile_img", teamBFlag: "profile_img"),
        Scorecard(matchDetail: "Final", seriesName: "World Cup 2024", teamAScore: 250, teamAWicket: 7, teamAOvers: "50.0", teamBScore: 180, teamBWicket: 5, teamBOvers: "30.0", needScore: "India Need 70 to win", teamAFlag: "profile_img", teamBFlag: "profile_img")
    ]
    
    var body: some View {
        VStack {
            // Top Header of home page
            HStack {
                Image(systemName: "line.horizontal.3.decrease")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color.white)
                Spacer()
                Image("profile_img")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray))
            }
            
            // Live Match Score Card Section
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(scorecards, id: \.self) { scorecard in
                        LiveScoreCardView(scorecard: scorecard)
                            .padding(.vertical, 10)
                    }
                }
            }
        }
        .padding()
        .background(Color(red: 0.13, green: 0.13, blue: 0.19))
    }
}

#Preview {
    CricGeniusHomeView()
}
