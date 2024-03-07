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
                
                Text(matchSchedule.date)
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
                                .shadow(color: self.selectedTeam == 0 ? Color(matchSchedule.homeTeam.teamColor) : .clear, radius: 12, x: 0, y: 0)
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
                                .shadow(color: self.selectedTeam == 1 ? Color(matchSchedule.awayTeam.teamColor) : .clear, radius: 12, x: 0, y: 0)
                        )
                    })
                }
            }
            .padding()
            
            VStack {
                HStack(spacing: 8) {
                    Button(action: {
                        self.selectedRole = "WK"
                    }, label: {
                        Text("WK(1)")
                            .font(.system(size: 16))
                            .bold()
                            .foregroundColor(self.selectedRole == "WK" ||  self.selectedTeam == 1 ?  Color(matchSchedule.homeTeam.teamColor) : Color(matchSchedule.awayTeam.teamColor))
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        self.selectedRole = "BAT"
                    }, label: {
                        Text("BAT(6)")
                            .font(.system(size: 16))
                            .bold()
                            .foregroundColor(self.selectedRole == "BAT" ||  self.selectedTeam == 1 ?  Color(matchSchedule.homeTeam.teamColor) : Color(matchSchedule.awayTeam.teamColor))
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        self.selectedRole = "AR"
                    }, label: {
                        Text("AR(2)")
                            .font(.system(size: 16))
                            .bold()
                            .foregroundColor(self.selectedRole == "AR" ||  self.selectedTeam == 1 ?  Color(matchSchedule.homeTeam.teamColor) : Color(matchSchedule.awayTeam.teamColor))
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        self.selectedRole = "BOWL"
                    }, label: {
                        Text("BOWL(4)")
                            .font(.system(size: 16))
                            .bold()
                            .foregroundColor(self.selectedRole == "BOWL" ||  self.selectedTeam == 1 ?  Color(matchSchedule.homeTeam.teamColor) : Color(matchSchedule.awayTeam.teamColor))
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
                        HStack {
                            Image("profile_img")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.green))
                                .padding(.leading, 15)
                            Text("Rohit Sharma")
                                .font(.title3)
                                .bold()
                                .foregroundStyle(.white)
                                .padding(5)
                            Spacer()
                            Text("180.0")
                                .font(.system(size: 16))
                                .bold()
                                .foregroundStyle(.white)
                            Text("45.0")
                                .font(.system(size: 16))
                                .bold()
                                .foregroundStyle(.white)
                                .padding(.leading, 30)
                                .padding(.trailing, 20)
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
                        Button(action: {}, label: {
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
                        })
                        
                        Button(action: {}, label: {
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
                        })
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
