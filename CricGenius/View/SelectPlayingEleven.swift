//
//  SelectPlayingEleven.swift
//  CricGenius
//
//  Created by Vivek Singh on 08/03/24.
//

import Foundation
import SwiftUI

class SelectedPlayersViewModel: ObservableObject {
    @Published var homeTeamPlayers: [Player] = []
    @Published var awayTeamPlayers: [Player] = []
}

struct SelectPlayingEleven: View {
    @State private var selectedTeam: Int = 0
    @State private var selectedRole: String? = "WK"
    @ObservedObject var selectedPlayersViewModel: SelectedPlayersViewModel
    let matchSchedule: UpcomingMatchSchedule
    var teamData: CricketTeam {
        selectedTeam == 0 ? matchSchedule.homeTeam : matchSchedule.awayTeam
    }
    
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
                PlayerSelectionView(selectedRole: $selectedRole, teamData: teamData, selectedPlayersViewModel: selectedPlayersViewModel, selectedTeam: selectedTeam)
                    .padding(.top, 50)
            }
            
            Spacer()
            
            VStack {
                GeometryReader { geometry in
                    HStack(spacing: 0) {
                        NavigationLink(destination: UpcomingMatchDetailView(matchSchedule: matchSchedule)) {
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
                                    .foregroundColor(matchSchedule.homeTeam.teamColor)
                                    .clipShape(
                                        RoundedCorner(corner: .bottomLeft, radius: 25)
                                    )
                            )
                        }
                        
                        NavigationLink(destination: PlayingElevenView(matchSchedule: matchSchedule, selectedPlayersViewModel: selectedPlayersViewModel)) {
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
                                    .foregroundColor(matchSchedule.awayTeam.teamColor)
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
        .padding(.top, 50)
        .background(Color(red: 0.13, green: 0.13, blue: 0.19))
        .ignoresSafeArea()
    }
    
    func playerSelected(player: Player) -> Bool {
        if selectedTeam == 0 {
            return selectedPlayersViewModel.homeTeamPlayers.contains { $0.id == player.id }
        } else {
            return selectedPlayersViewModel.awayTeamPlayers.contains { $0.id == player.id }
        }
    }
    
    func togglePlayerSelection(player: Player) {
        if selectedTeam == 0 {
            if let index = selectedPlayersViewModel.homeTeamPlayers.firstIndex(where: { $0.id == player.id }) {
                selectedPlayersViewModel.homeTeamPlayers.remove(at: index)
            } else {
                guard selectedPlayersViewModel.homeTeamPlayers.count < 11 else { return }
                selectedPlayersViewModel.homeTeamPlayers.append(player)
                print("Home Team", selectedPlayersViewModel.homeTeamPlayers)
            }
        } else {
            if let index = selectedPlayersViewModel.awayTeamPlayers.firstIndex(where: { $0.id == player.id }) {
                selectedPlayersViewModel.awayTeamPlayers.remove(at: index)
            } else {
                guard selectedPlayersViewModel.awayTeamPlayers.count < 11 else { return }
                selectedPlayersViewModel.awayTeamPlayers.append(player)
                print("Away Team", selectedPlayersViewModel.awayTeamPlayers)
            }
        }
    }
}
