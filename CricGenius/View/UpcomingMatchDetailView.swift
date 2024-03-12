//
//  UpcomingMatchDetailTest.swift
//  CricGenius
//
//  Created by Vivek Singh on 07/03/24.
//

import Foundation
import SwiftUI

struct UpcomingMatchDetailView: View {
    @State private var selectedTeam: Int = 0
    @State private var selectedRole: String? = "WK"
    
    var teamData: CricketTeam {
        selectedTeam == 0 ? matchSchedule.homeTeam : matchSchedule.awayTeam
    }
    let matchSchedule: UpcomingMatchSchedule
    var body: some View {
        VStack(alignment: .center) {
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
            
            TeamSelectionView(selectedTeam: $selectedTeam, matchSchedule: matchSchedule, teamData: teamData)
            
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
                            .padding(.leading, 15)
                        Spacer()
                        Text("SR")
                            .font(.system(size: 18))
                            .bold()
                            .foregroundStyle(.white)
                        Text("AVG")
                            .font(.system(size: 18))
                            .bold()
                            .foregroundStyle(.white)
                            .padding(.leading, 40)
                            .padding(.trailing, 20)
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
                                HStack {
                                    Image("profile_img")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(teamData.teamColor))
                                        .padding(.leading, 15)
                                    
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
                                    
                                    Text("80.0")
                                        .font(.system(size: 16))
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding(.leading, 30)
                                        .padding(.trailing, 20)
                                }
                            }
                        }
                    }
                    .frame(height: 355)
                    
                }
                .padding()
            }
            .padding(.top, 50)
            
            Spacer()
            
            VStack {
                GeometryReader { geometry in
                    HStack(spacing: 0) {
                        NavigationLink(destination: CricGeniusHomeView()) {
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
                                    .foregroundColor(Color(matchSchedule.homeTeam.teamColor))
                                    .clipShape(
                                        RoundedCorner(corner: .bottomLeft, radius: 25)
                                    )
                            )
                        }
                        
                        NavigationLink(destination: SelectPlayingEleven(matchSchedule: matchSchedule)) {
                            VStack {
                                Text("PLAYING 11")
                                    .font(.system(size: 18))
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical, 15)
                            .frame(width: (geometry.size.width) / 2)
                            .background(
                                RoundedRectangle(cornerRadius: 0, style: .continuous)
                                    .foregroundColor(Color(matchSchedule.awayTeam.teamColor))
                                    .clipShape(
                                        RoundedCorner(corner: .bottomRight, radius: 25)
                                    )
                            )
                        }
                    }
                }
            }
            .padding(.bottom)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .background(Color(red: 0.13, green: 0.13, blue: 0.19))
        .ignoresSafeArea()
        
    }
}

struct RoundedCorner: Shape {
    var corner: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corner,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    CricGeniusHomeView()
}
