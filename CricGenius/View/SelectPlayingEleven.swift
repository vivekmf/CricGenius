//
//  SelectPlayingEleven.swift
//  CricGenius
//
//  Created by Vivek Singh on 08/03/24.
//

import Foundation
import SwiftUI

struct SelectPlayingEleven: View {
    @State private var selectedTeam: Int = 0
    @State private var selectedRole: String? = "WK"
    @State private var homeTeamPlayers: [Player] = []
    @State private var awayTeamPlayers: [Player] = []
    
    let matchSchedule: UpcomingMatchSchedule
    
    var body: some View {
        VStack(alignment: .center) {
            VStack {
                Image(teamData.flagImage)
                    .resizable()
                    .frame(width: 160, height: 160)
                    .padding(.horizontal, 120)
                    .padding(.top, -20)
                    .padding(.bottom,-10)
                Text("Select Playing 11 for \(teamData.shortName)")
                    .font(.title3)
                    .bold()
                    .foregroundStyle(.white)
            }
            .padding()
            .background(Color(teamData.teamColor))
            .shadow(color: Color(teamData.teamColor).opacity(0.8), radius: 12, x: 0, y: 4)
            .frame(maxWidth: .infinity)
            
            VStack {
                TeamSelectionView(selectedTeam: $selectedTeam, matchSchedule: matchSchedule, teamData: teamData)
            }
            
            VStack {
                HStack(spacing: 8) {
                    Button(action: {
                        self.selectedRole = "WK"
                    }, label: {
                        Text("WK(\(teamData.wicketKeeperCount))")
                            .font(.system(size: 16))
                            .bold()
                            .foregroundColor(self.selectedRole == "WK" ?  Color(teamData.teamColor) : .white)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        self.selectedRole = "BAT"
                    }, label: {
                        Text("BAT(\(teamData.batsmanCount))")
                            .font(.system(size: 16))
                            .bold()
                            .foregroundColor(self.selectedRole == "BAT" ?  Color(teamData.teamColor) : .white)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        self.selectedRole = "AR"
                    }, label: {
                        Text("AR(\(teamData.allRounderCount))")
                            .font(.system(size: 16))
                            .bold()
                            .foregroundColor(self.selectedRole == "AR" ?  Color(teamData.teamColor) : .white)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        self.selectedRole = "BOWL"
                    }, label: {
                        Text("BOWL(\(teamData.bowlerCount))")
                            .font(.system(size: 16))
                            .bold()
                            .foregroundColor(self.selectedRole == "BOWL" ?  Color(teamData.teamColor) : .white)
                    })
                }
                .padding(.top, 10)
                .padding(.leading, 40)
                .padding(.trailing, 40)
                
                VStack {
                    HStack {
                        Text("Player")
                            .font(.system(size: 18))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.leading, 5)
                        
                        Spacer()
                        
                        Text("AVG")
                            .font(.system(size: 18))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.leading, 10)
                        
                        Text("+/-")
                            .font(.system(size: 22))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.leading, 40)
                            .padding(.trailing, 25)
                    }
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 2)
                        .padding(.top, -8)
                    
                    ScrollView {
                        VStack {
                            ForEach(teamData.players.filter { player in
                                switch selectedRole {
                                case "WK":
                                    return player.role == "WK-Batsman"
                                case "BOWL":
                                    return player.role == "Bowler"
                                case "BAT":
                                    return player.role == "Batsman"
                                case "AR":
                                    return player.role == "All-rounder"
                                default:
                                    return false
                                }
                            }) { player in
                                PlayerRow(player: player, team: teamData, addToTeam: {
                                    if selectedTeam == 0 {
                                        homeTeamPlayers.append(player)
                                    } else {
                                        awayTeamPlayers.append(player)
                                    }
                                })
                            }
                        }
                    }
                    .frame(height: 325)
                }
                .padding()
            }
            .padding(.top, 50)
            
            Spacer()
            
            Spacer()
            
            VStack {
                GeometryReader { geometry in
                    HStack(spacing: 0) {
                        Button(action: {
                            print("Home Team Players: \(homeTeamPlayers)")
                            print("Home Team Players: \(awayTeamPlayers)")
                        }, label: {
                            VStack {
                                Text("REVIEW PLAYERS")
                                    .font(.system(size: 18))
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical, 15)
                            .frame(width: (geometry.size.width) / 2)
                            .background(
                                RoundedRectangle(cornerRadius: 0, style: .continuous)
                                    .foregroundColor(Color.blue)
                                    .clipShape(
                                        RoundedCorner(corner: .bottomLeft, radius: 25)
                                    )
                            )
                        })
                        
                        Button(action: {}, label: {
                            VStack {
                                Text("PREDICT WINNER")
                                    .font(.system(size: 18))
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical, 15)
                            .frame(width: (geometry.size.width) / 2)
                            .background(
                                RoundedRectangle(cornerRadius: 0, style: .continuous)
                                    .foregroundColor(Color.yellow)
                                    .clipShape(
                                        RoundedCorner(corner: .bottomRight, radius: 25)
                                    )
                            )
                        })
                    }
                }
            }
            .padding(.bottom)
        }
        .padding(.top, 50)
        .background(Color(red: 0.13, green: 0.13, blue: 0.19))
        .ignoresSafeArea()
    }
    
    var teamData: IPLTeam {
        selectedTeam == 0 ? matchSchedule.homeTeam : matchSchedule.awayTeam
    }
}

struct PlayerRow: View {
    let player: Player
    let team: IPLTeam
    let addToTeam: () -> Void
    
    var body: some View {
        HStack {
            Image("profile_img")
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .overlay(Circle().stroke(team.teamColor))
                .padding(.leading, 5)
            
            Text(player.name)
                .font(.title3)
                .bold()
                .foregroundColor(.white)
                .padding(5)
            
            Spacer()
            
            Text("180.0")
                .font(.system(size: 16))
                .bold()
                .foregroundColor(.white)
                .padding(.trailing, 25)
            
            Button(action: {
                addToTeam()
            }) {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 30, height: 20)
                    .padding(8)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(8)
            }
            .padding(.trailing, 10)
        }
    }
}
