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
        Scorecard(matchDetail: "3rd ODI", seriesName: "Pak Tour of India 2024", teamAScore: 310, teamAWicket: 10, teamAOvers: "50.0", teamBScore: 145, teamBWicket: 1, teamBOvers: "18.0", needScore: "India Need 166 to win", teamAFlag: "england_flag", teamBFlag: "indian_flag"),
        Scorecard(matchDetail: "1st Test", seriesName: "Eng Tour of Aus 2024", teamAScore: 200, teamAWicket: 4, teamAOvers: "40.0", teamBScore: 150, teamBWicket: 3, teamBOvers: "20.0", needScore: "India Need 51 to win", teamAFlag: "england_flag", teamBFlag: "indian_flag"),
        Scorecard(matchDetail: "Final", seriesName: "World Cup 2024", teamAScore: 250, teamAWicket: 7, teamAOvers: "50.0", teamBScore: 180, teamBWicket: 5, teamBOvers: "30.0", needScore: "India Need 70 to win", teamAFlag: "england_flag", teamBFlag: "indian_flag")
    ]
    
    let topStories: [TopStories] = [
        TopStories(storyImage: "kohli_dhoni", storyText: "Virat Kohli's 12k dream turns into nightmare"),
        TopStories(storyImage: "rohit_confrance", storyText: "'I don't sit in visa office ..' Rohit Sharma")
    ]
    
    @State private var bottomMenuItems: [BottomNavigationMenuItem] = [
        BottomNavigationMenuItem(imageName: "house.fill", itemName: "Home", isSelected: true),
        //        BottomNavigationMenuItem(imageName: "figure.cricket", itemName: "Matches"),
        //        BottomNavigationMenuItem(imageName: "message.fill", itemName: "Messages"),
        //        BottomNavigationMenuItem(imageName: "person.fill", itemName: "Profile")
    ]
    
    var body: some View {
        VStack {
            // Top Header of home page
            Button(action: {
                //                RealmDataManager.readAndStoreJSONData()
                let directoryURL = URL(fileURLWithPath: "/Users/nishantshah/Downloads/CricketData/ipl_json")
                
                do {
                    let fileURLs = try FileManager.default.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil)
                        .filter { $0.pathExtension == "json" }
                    for fileURL in fileURLs {
                        RealmDataManager.readAndStoreJSONData(from: fileURL)
                    }
                } catch {
                    print("Error accessing directory: \(error)")
                }
                
            }) {
                HStack {
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .frame(width: 25, height: 20)
                        .foregroundStyle(Color.white)
                    Spacer()
                    Image("profile_img")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray))
                }
            }
            
            // Live Match Score Card Section
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(scorecards, id: \.self) { scorecard in
                        LiveScoreCardView(scorecard: scorecard)
                            .padding(.vertical, 10)
                            .padding(.trailing, -30)
                            .padding(.leading, -50)
                    }
                }
            }
            VStack(alignment: .leading){
                HStack{
                    Text("Upcoming Matches")
                        .font(.system(size: 18))
                        .bold()
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("View All")
                        .font(.system(size: 12))
                        .bold()
                        .foregroundColor(Color.white)
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(ipl2024MatchSchedule) { matchSchedule in
                            UpcomingMatchView(matchSchedule: matchSchedule)
                                .padding(2)
                        }
                    }
                }
            }
            .padding(.bottom, 10)
            
            VStack(alignment: .leading){
                HStack{
                    Text("Top Stories")
                        .font(.system(size: 18))
                        .bold()
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("View All")
                        .font(.system(size: 12))
                        .bold()
                        .foregroundColor(Color.white)
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(topStories) { topstories in
                            TopStoriesView(storyImage: topstories.storyImage, storyText: topstories.storyText)
                                .padding(2)
                        }
                    }
                }
            }
            .padding(.bottom, 10)
            
            // Bottom Navigation Menu Section
            BottomNavigationView(bottomMenuItems: $bottomMenuItems)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .padding()
        .background(Color(red: 0.13, green: 0.13, blue: 0.19))
    }
}


#Preview {
    CricGeniusHomeView()
}
