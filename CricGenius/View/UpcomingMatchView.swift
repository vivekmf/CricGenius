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
    var homeTeamImage: String
    var awayTeamImage: String
    var matchTime: String
    var matchDate: String
    var venue: String
}

struct UpcomingMatchView: View {
    
    var homeTeamImage: String
    var awayTeamImage: String
    var matchTime: String
    var matchDate: String
    var venue: String
    
    var body: some View {
        VStack(alignment:.leading) {
            HStack {
                VStack(alignment:.center) {
                    Image(homeTeamImage)
                        .resizable()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray))
                        .padding(8)
                    
                    Text("VS")
                        .font(.system(size: 12))
                        .foregroundStyle(Color.gray)
                    
                    Image(awayTeamImage)
                        .resizable()
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray))
                        .padding(8)
                }
                .padding(15)
                
                Spacer()
                
                VStack(alignment:.trailing) {
                    Text(matchTime)
                        .font(.system(size: 18))
                        .bold()
                        .padding(.bottom, 15)
                    
                    Text(matchDate)
                        .font(.system(size: 12))
                        .foregroundStyle(Color.gray)
                    
                    Text("Venue: \(venue)")
                        .font(.system(size: 12))
                        .foregroundStyle(Color.gray)
                        .multilineTextAlignment(.trailing)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.top, 2)
                }
                .padding(20)
            }
            .background(Color.white)
            .cornerRadius(16)
            .presentationCornerRadius(28)
        }
    }
}

#Preview{
    CricGeniusHomeView()
}
