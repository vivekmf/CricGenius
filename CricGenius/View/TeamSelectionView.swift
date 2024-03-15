//
//  TeamSelectionView.swift
//  CricGenius
//
//  Created by Vivek Singh on 08/03/24.
//

import Foundation
import SwiftUI

struct TeamSelectionView: View {
    @Binding var selectedTeam: Int
    var matchSchedule: UpcomingMatchSchedule
    var teamData: CricketTeam
    
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 8) {
                Button(action: {
                    self.selectedTeam = 0
                }, label: {
                    VStack {
                        HStack {
                            Image(matchSchedule.homeTeam.flagImage)
                                .resizable()
                                .frame(width: 35, height: 35)
                            
                            Text("\(matchSchedule.homeTeam.shortName) Squad")
                                .font(.system(size: 18))
                                .bold()
                                .foregroundStyle(.white)
                        }
                    }
                    .padding(10)
                    .frame(width: (geometry.size.width - 16) / 2)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(Color(matchSchedule.homeTeam.teamColor))
                            .shadow(color: self.selectedTeam == 0 ? Color(teamData.teamColor) : .clear, radius: 12, x: 0, y: 0)
                    )
                })
                
                Button(action: {
                    self.selectedTeam = 1
                }, label: {
                    VStack {
                        HStack {
                            Image(matchSchedule.awayTeam.flagImage)
                                .resizable()
                                .frame(width: 35, height: 35)
                            
                            Text("\(matchSchedule.awayTeam.shortName) Squad")
                                .font(.system(size: 18))
                                .bold()
                                .foregroundStyle(.white)
                        }
                    }
                    .padding(10)
                    .frame(width: (geometry.size.width - 16) / 2)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(Color(matchSchedule.awayTeam.teamColor))
                            .shadow(color: self.selectedTeam == 1 ? Color(teamData.teamColor) : .clear, radius: 12, x: 0, y: 0)
                    )
                })
            }
        }
        .padding()
    }
}
