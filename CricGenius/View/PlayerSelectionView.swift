//
//  PlayerSelectionView.swift
//  CricGenius
//
//  Created by Vivek Singh on 11/03/24.
//

import Foundation
import SwiftUI

struct PlayerSelectionView: View {
    @Binding var selectedRole: String?
    let teamData: CricketTeam
    @ObservedObject var selectedPlayersViewModel: SelectedPlayersViewModel
    let selectedTeam: Int
    
    init(selectedRole: Binding<String?>, teamData: CricketTeam, selectedPlayersViewModel: SelectedPlayersViewModel, selectedTeam: Int) {
        self._selectedRole = selectedRole
        self.teamData = teamData
        self.selectedPlayersViewModel = selectedPlayersViewModel
        self.selectedTeam = selectedTeam
    }
    
    var body: some View {
        VStack {
            HStack(spacing: 4) {
                Button(action: {
                    self.selectedRole = "WK"
                }) {
                    Text("WK(\(selectedTeam == 0 ? selectedPlayersViewModel.homeTeamPlayers.filter { $0.role == "WK" || $0.role == "WK-Batsman" }.count : selectedPlayersViewModel.awayTeamPlayers.filter { $0.role == "WK" || $0.role == "WK-Batsman" }.count)/\(teamData.wicketKeeperCount))")
                        .font(.system(size: 16))
                        .bold()
                        .foregroundColor(self.selectedRole == "WK" ?  Color(teamData.teamColor) : .white)
                }
                
                Spacer()
                
                Button(action: {
                    self.selectedRole = "BAT"
                }) {
                    Text("BAT(\(selectedTeam == 0 ? selectedPlayersViewModel.homeTeamPlayers.filter { $0.role == "Batsman" }.count : selectedPlayersViewModel.awayTeamPlayers.filter { $0.role == "Batsman" }.count)/\(teamData.batsmanCount))")
                        .font(.system(size: 16))
                        .bold()
                        .foregroundColor(self.selectedRole == "BAT" ?  Color(teamData.teamColor) : .white)
                }
                
                Spacer()
                
                Button(action: {
                    self.selectedRole = "AR"
                }) {
                    Text("AR(\(selectedTeam == 0 ? selectedPlayersViewModel.homeTeamPlayers.filter { $0.role == "All-rounder" }.count : selectedPlayersViewModel.awayTeamPlayers.filter { $0.role == "All-rounder" }.count)/\(teamData.allRounderCount))")
                        .font(.system(size: 16))
                        .bold()
                        .foregroundColor(self.selectedRole == "AR" ?  Color(teamData.teamColor) : .white)
                }
                
                Spacer()
                
                Button(action: {
                    self.selectedRole = "BOWL"
                }) {
                    Text("BOWL(\(selectedTeam == 0 ? selectedPlayersViewModel.homeTeamPlayers.filter { $0.role == "Bowler" }.count : selectedPlayersViewModel.awayTeamPlayers.filter { $0.role == "Bowler" }.count)/\(teamData.bowlerCount))")
                        .font(.system(size: 16))
                        .bold()
                        .foregroundColor(self.selectedRole == "BOWL" ?  Color(teamData.teamColor) : .white)
                }
            }
            .padding(.top, -10)
            .padding(.horizontal, 8)
            
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
            .padding(.top, 10)
            Rectangle()
                .fill(Color.white)
                .frame(height: 2)
                .padding(.top, -10)
            
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
                                togglePlayerSelection(player: player)
                            }) {
                                if playerSelected(player: player) {
                                    Image(systemName: "minus")
                                        .resizable()
                                        .frame(width: 22, height: 2)
                                        .padding(8)
                                        .padding(.vertical, 10)
                                        .padding(.horizontal, 5)
                                        .foregroundColor(.white)
                                        .background(Color.red)
                                        .cornerRadius(8)
                                } else {
                                    Image(systemName: "plus")
                                        .resizable()
                                        .frame(width: 22, height: 20)
                                        .padding(8)
                                        .padding(.horizontal, 5)
                                        .foregroundColor(.white)
                                        .background(Color.green)
                                        .cornerRadius(8)
                                }
                            }
                            .padding(.trailing, 10)
                        }
                    }
                }
            }
            .frame(height: 345)
        }
        .padding()
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
