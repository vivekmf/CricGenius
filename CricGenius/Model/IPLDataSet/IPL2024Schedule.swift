//
//  IPL2024Schedule.swift
//  CricGenius
//
//  Created by Vivek Singh on 06/03/24.
//

import Foundation
import SwiftUI
import RealmSwift

class RealmUpcomingMatchSchedule: Object {
    @Persisted(primaryKey: true) var id = UUID().uuidString
    @Persisted var date: String = ""
    @Persisted var time: String = ""
    @Persisted var homeTeam: RealmCricketTeam?
    @Persisted var awayTeam: RealmCricketTeam?
    @Persisted var venue: String = ""
    @Persisted var city: String = ""
}

struct UpcomingMatchSchedule: Identifiable {
    var id = UUID()
    var date: String
    var time: String
    var homeTeam: CricketTeam
    var awayTeam: CricketTeam
    var venue: String
    var city: String
}

let ipl2024MatchSchedule = [
    UpcomingMatchSchedule(date: "2024-03-22", time: "08:00 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "CSK" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "RCB" })!, venue: "MA Chidambaram Stadium, Chepauk", city: "Chennai"),
    UpcomingMatchSchedule(date: "2024-03-23", time: "03:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "PBKS" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "DC" })!, venue: "Punjab Cricket Association Stadium, Mohali", city: "Mohali"),
    UpcomingMatchSchedule(date: "2024-03-23", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "KKR" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "SRH" })!, venue: "Eden Gardens, Kolkata", city: "Kolkata"),
    UpcomingMatchSchedule(date: "2024-03-24", time: "03:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "RR" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "LSG" })!, venue: "Sawai Mansingh Stadium, Jaipur", city: "Jaipur"),
    UpcomingMatchSchedule(date: "2024-03-24", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "GT" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "MI" })!, venue: "Narendra Modi Stadium, Ahmedabad", city: "Ahmedabad"),
    UpcomingMatchSchedule(date: "2024-03-25", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "RCB" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "PBKS" })!, venue: "M.Chinnaswamy Stadium, Bangalore", city: "Bangalore"),
    UpcomingMatchSchedule(date: "2024-03-26", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "CSK" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "GT" })!, venue: "MA Chidambaram Stadium, Chepauk", city: "Chennai"),
    UpcomingMatchSchedule(date: "2024-03-27", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "SRH" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "MI" })!, venue: "Rajiv Gandhi International Cricket Stadium, Hyderabad", city: "Hyderabad"),
    UpcomingMatchSchedule(date: "2024-03-28", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "RR" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "DC" })!, venue: "Sawai Mansingh Stadium, Jaipur", city: "Jaipur"),
    UpcomingMatchSchedule(date: "2024-03-29", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "RCB" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "KKR" })!, venue: "M.Chinnaswamy Stadium, Bangalore", city: "Bangalore"),
    UpcomingMatchSchedule(date: "2024-03-30", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "LSG" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "PBKS" })!, venue: "Ekana International Cricket Stadium, Lucknow", city: "Lucknow"),
    UpcomingMatchSchedule(date: "2024-03-31", time: "03:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "GT" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "SRH" })!, venue: "Narendra Modi Stadium, Ahmedabad", city: "Ahmedabad"),
    UpcomingMatchSchedule(date: "2024-03-31", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "DC" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "CSK" })!, venue: "ACA-VDCA Stadium, Vizag", city: "Vizag"),
    UpcomingMatchSchedule(date: "2024-04-01", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "MI" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "RR" })!, venue: "Wankhede Stadium, Mumbai", city: "Mumbai"),
    UpcomingMatchSchedule(date: "2024-04-02", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "RCB" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "LSG" })!, venue: "M.Chinnaswamy Stadium, Bangalore", city: "Bangalore"),
    UpcomingMatchSchedule(date: "2024-04-03", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "DC" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "KKR" })!, venue: "ACA-VDCA Stadium, Vizag", city: "Vizag"),
    UpcomingMatchSchedule(date: "2024-04-04", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "GT" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "PBKS" })!, venue: "Narendra Modi Stadium, Ahmedabad", city: "Ahmedabad"),
    UpcomingMatchSchedule(date: "2024-04-05", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "SRH" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "CSK" })!, venue: "Rajiv Gandhi International Cricket Stadium, Hyderabad", city: "Hyderabad"),
    UpcomingMatchSchedule(date: "2024-04-06", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "RR" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "RCB" })!, venue: "Sawai Mansingh Stadium, Jaipur", city: "Jaipur"),
    UpcomingMatchSchedule(date: "2024-04-07", time: "03:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "MI" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "DC" })!, venue: "Wankhede Stadium, Mumbai", city: "Mumbai"),
    UpcomingMatchSchedule(date: "2024-04-07", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "LSG" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "GT" })!, venue: "Ekana International Cricket Stadium, Lucknow", city: "Lucknow")
]

let upcomingMatchSchedule = fetchMatchScheduleFromRealm()

// Function to insert Schedule into Realm
func insertScheduleIntoRealm(schedule: [UpcomingMatchSchedule]) {
    // Get the default Realm
    guard let realm = try? Realm() else {
        fatalError("Failed to access Realm database")
    }
    
    // Write Schedule data into Realm
    try? realm.write {
        for match in schedule {
            let realmMatch = RealmUpcomingMatchSchedule()
            realmMatch.id = UUID().uuidString
            realmMatch.date = match.date
            realmMatch.time = match.time
            
            // Fetch home team from Realm
            if let homeTeam = realm.objects(RealmCricketTeam.self).filter("id == %@", match.homeTeam.id.uuidString).first {
                realmMatch.homeTeam = homeTeam
            } else {
                // Handle error if home team is not found
                print("Home team not found in Realm")
            }
            
            // Fetch away team from Realm
            if let awayTeam = realm.objects(RealmCricketTeam.self).filter("id == %@", match.awayTeam.id.uuidString).first {
                realmMatch.awayTeam = awayTeam
            } else {
                // Handle error if away team is not found
                print("Away team not found in Realm")
            }
            
            realmMatch.venue = match.venue
            realmMatch.city = match.city
            
            // Add the match to Realm
            realm.add(realmMatch)
        }
    }
}

func fetchMatchScheduleFromRealm() -> [UpcomingMatchSchedule] {
    // Get the default Realm
    guard let realm = try? Realm() else {
        fatalError("Failed to access Realm database")
    }
    
    // Fetch UpcomingMatchSchedule objects from Realm
    let realmMatches = realm.objects(RealmUpcomingMatchSchedule.self)
    
    // Map Realm objects to UpcomingMatchSchedule objects
    let matches = realmMatches.map { realmMatch -> UpcomingMatchSchedule in
        // Fetch home team players using fetchPlayersForTeamFromRealm
        let homeTeamPlayers = fetchPlayersForTeamFromRealm(teamName: realmMatch.homeTeam?.name ?? "")
        
        // Fetch away team players using fetchPlayersForTeamFromRealm
        let awayTeamPlayers = fetchPlayersForTeamFromRealm(teamName: realmMatch.awayTeam?.name ?? "")
        
        let homeTeam = CricketTeam(id: UUID(), name: realmMatch.homeTeam?.name ?? "", franchiseName: realmMatch.homeTeam?.franchiseName ?? "", shortName: realmMatch.homeTeam?.shortName ?? "", flagImage: realmMatch.homeTeam?.flagImage ?? "", matchPlayed: realmMatch.homeTeam?.matchPlayed ?? 0, matchWon: realmMatch.homeTeam?.matchWon ?? 0, matchDraw: realmMatch.homeTeam?.matchDraw ?? 0, iplFinalWon: realmMatch.homeTeam?.iplFinalWon ?? 0, firstMatchYear: realmMatch.homeTeam?.firstMatchYear ?? 0, ownerId: realmMatch.homeTeam?.ownerId ?? "", coach: realmMatch.homeTeam?.coach ?? "", venue: realmMatch.homeTeam?.venue ?? "", captain: realmMatch.homeTeam?.captain ?? "", players: homeTeamPlayers, teamColor: Color(hex: realmMatch.homeTeam?.teamColor ?? ""))
        
        let awayTeam = CricketTeam(id: UUID(), name: realmMatch.awayTeam?.name ?? "", franchiseName: realmMatch.awayTeam?.franchiseName ?? "", shortName: realmMatch.awayTeam?.shortName ?? "", flagImage: realmMatch.awayTeam?.flagImage ?? "", matchPlayed: realmMatch.awayTeam?.matchPlayed ?? 0, matchWon: realmMatch.awayTeam?.matchWon ?? 0, matchDraw: realmMatch.awayTeam?.matchDraw ?? 0, iplFinalWon: realmMatch.awayTeam?.iplFinalWon ?? 0, firstMatchYear: realmMatch.awayTeam?.firstMatchYear ?? 0, ownerId: realmMatch.awayTeam?.ownerId ?? "", coach: realmMatch.awayTeam?.coach ?? "", venue: realmMatch.awayTeam?.venue ?? "", captain: realmMatch.awayTeam?.captain ?? "", players: awayTeamPlayers, teamColor: Color(hex: realmMatch.awayTeam?.teamColor ?? ""))
        
        return UpcomingMatchSchedule(id: UUID(), date: realmMatch.date, time: realmMatch.time, homeTeam: homeTeam, awayTeam: awayTeam, venue: realmMatch.venue, city: realmMatch.city)
    }
    
    return Array(matches)
}
