//
//  LiveScoreCardView.swift
//  CricGenius
//
//  Created by Vivek Singh on 22/02/24.
//

import Foundation
import SwiftUI

// Define a struct to hold scorecard information
struct Scorecard: Hashable {
    var matchDetail: String
    var seriesName: String
    var teamAScore: Int
    var teamAWicket: Int
    var teamAOvers: String
    var teamBScore: Int
    var teamBWicket: Int
    var teamBOvers: String
    var needScore: String
    var teamAFlag: String
    var teamBFlag: String
}

struct LiveScoreCardView: View {
    // Use Scorecard as parameter
    var scorecard: Scorecard
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            ZStack {
                CustomShape()
                    .fill(Color(red: 0.48, green: 0.82, blue: 0.91))
                    .frame(width: 260, height: 180)
                    .shadow(color: Color(red: 0.48, green: 0.82, blue: 0.91).opacity(0.2), radius: 5)
                
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Image(systemName: "livephoto.play")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .foregroundColor(.white)
                        Text("Live")
                            .font(.system(size: 12))
                            .bold()
                            .foregroundStyle(Color.white)
                    }
                    .padding(5)
                    .background(Color.red)
                    .cornerRadius(45)
                    
                    Text("\(scorecard.matchDetail) : \(scorecard.seriesName)")
                        .font(.system(size: 14))
                        .padding(.top, 5)
                    
                    HStack {
                        Image(scorecard.teamAFlag)
                            .resizable()
                            .frame(width: 32, height: 32)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.gray))
                        
                        Spacer()
                        
                        Text("\(scorecard.teamAScore) - \(scorecard.teamAWicket)")
                            .font(.title3)
                            .bold()
                        
                        Text("(\(scorecard.teamAOvers))")
                            .font(.system(size: 14))
                    }
                    .padding(.top, 5)
                    
                    HStack {
                        Image(scorecard.teamBFlag)
                            .resizable()
                            .frame(width: 32, height: 32)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.gray))
                        
                        Spacer()
                        
                        Text("\(scorecard.teamBScore) - \(scorecard.teamBWicket)")
                            .font(.title3)
                            .bold()
                        
                        Text("(\(scorecard.teamBOvers))")
                            .font(.system(size: 14))
                    }
                    .padding(.top, 5)
                    
                    Text(scorecard.needScore)
                        .font(.system(size: 14))
                }
                .padding(75)
            }
            
            Image(systemName: "arrow.forward")
                .resizable()
                .frame(width: 18, height: 18)
                .bold()
                .rotationEffect(Angle(degrees: 300))
                .background(
                    Circle()
                        .foregroundColor(Color(red: 0.48, green: 0.82, blue: 0.91))
                        .frame(width: 40, height: 40)
                        .shadow(color: Color(red: 0.48, green: 0.82, blue: 0.91).opacity(0.2), radius: 2)
                )
                .offset(x: 100, y: -240)
        }
        .padding(.trailing, -30)
        .padding(.leading, -50)
    }
}
#Preview {
    CricGeniusHomeView()
}
