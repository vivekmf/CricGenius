//
//  IPLTeams.swift
//  CricGenius
//
//  Created by Vivek Singh on 06/03/24.
//

import Foundation
import SwiftUI
import RealmSwift

// Realm model for CricketTeam
class RealmCricketTeam: Object {
    @Persisted(primaryKey: true) var id = UUID().uuidString
    @Persisted var name: String = ""
    @Persisted var franchiseName: String = ""
    @Persisted var shortName: String = ""
    @Persisted var flagImage: String = ""
    @Persisted var matchPlayed: Int = 0
    @Persisted var matchWon: Int = 0
    @Persisted var matchDraw: Int = 0
    @Persisted var iplFinalWon: Int = 0
    @Persisted var firstMatchYear: Int = 0
    @Persisted var ownerId: String = ""
    @Persisted var coach: String = ""
    @Persisted var venue: String = ""
    @Persisted var captain: String = ""
    let players = LinkingObjects(fromType: RealmPlayer.self, property: "team")
    @Persisted var teamColor: String
}

struct CricketTeam: Identifiable {
    var id = UUID()
    var name: String
    var franchiseName: String
    var shortName: String
    var flagImage: String
    var matchPlayed: Int
    var matchWon: Int
    var matchDraw: Int
    var iplFinalWon: Int
    var firstMatchYear: Int
    var ownerId: String
    var coach: String
    var venue: String
    var captain: String
    var players: [Player]
    var teamColor: Color
    
    // Initialize IPLTeam with team color
    init(id: UUID = UUID(), name: String, franchiseName: String, shortName: String, flagImage: String, matchPlayed: Int, matchWon: Int, matchDraw: Int, iplFinalWon: Int, firstMatchYear: Int, ownerId: String, coach: String, venue: String, captain: String, players: [Player], teamColor: Color) {
        self.id = id
        self.name = name
        self.franchiseName = franchiseName
        self.shortName = shortName
        self.flagImage = flagImage
        self.matchPlayed = matchPlayed
        self.matchWon = matchWon
        self.matchDraw = matchDraw
        self.iplFinalWon = iplFinalWon
        self.firstMatchYear = firstMatchYear
        self.ownerId = ownerId
        self.coach = coach
        self.venue = venue
        self.captain = captain
        self.players = players.map { player in
            var playerWithTeam = player
            playerWithTeam.team = shortName
            return playerWithTeam
        }
        self.teamColor = teamColor
    }
}

let ipl2024Teams = [
    CricketTeam(name: "Chennai Super Kings", franchiseName: "Chennai Super Kings", shortName: "CSK", flagImage: ImageConstants.cskFlag, matchPlayed: 14, matchWon: 10, matchDraw: 1, iplFinalWon: 5, firstMatchYear: 2008, ownerId: "N. Srinivasan", coach: "Stephen Fleming", venue: "MA Chidambaram Stadium, Chepauk, Chennai", captain: "MS Dhoni", players: chennaiSuperKingsPlayers, teamColor: ColorConstants.cskYellow),
    CricketTeam(name: "Delhi Capitals", franchiseName: "Delhi Capitals", shortName: "DC", flagImage: ImageConstants.dcFlag, matchPlayed: 14, matchWon: 9, matchDraw: 2, iplFinalWon: 0, firstMatchYear: 2008, ownerId: "JSW Group", coach: "Ricky Ponting", venue: "Arun Jaitley Stadium, Delhi", captain: "Rishabh Pant", players: delhiCapitalsPlayers, teamColor: ColorConstants.dcBlue),
    CricketTeam(name: "Gujarat Titans", franchiseName: "Gujarat Titans", shortName: "GT", flagImage: ImageConstants.gtFlag, matchPlayed: 14, matchWon: 7, matchDraw: 3, iplFinalWon: 0, firstMatchYear: 2016, ownerId: "RPSG Group", coach: "Mohammad Kaif", venue: "Narendra Modi Stadium, Ahmedabad", captain: "Shubman Gill", players: gujaratTitansPlayers, teamColor: ColorConstants.gtGray),
    CricketTeam(name: "Kolkata Knight Riders", franchiseName: "Kolkata Knight Riders", shortName: "KKR", flagImage: ImageConstants.kkrFlag, matchPlayed: 14, matchWon: 8, matchDraw: 1, iplFinalWon: 2, firstMatchYear: 2008, ownerId: "Knight Riders Group", coach: "Brendon McCullum", venue: "Eden Gardens, Kolkata", captain: "Shreyas Iyer", players: kolkataKnightRidersPlayers, teamColor: ColorConstants.kkrPurple),
    CricketTeam(name: "Lucknow Super Giants", franchiseName: "Lucknow Super Giants", shortName: "LSG", flagImage: ImageConstants.lsgFlag, matchPlayed: 14, matchWon: 6, matchDraw: 2, iplFinalWon: 0, firstMatchYear: 2022, ownerId: "RPSG Group", coach: "Andy Flower", venue: "Ekana International Cricket Stadium, Lucknow", captain: "KL Rahul", players: lucknowSuperGiantsPlayers, teamColor: ColorConstants.lsgGreen),
    CricketTeam(name: "Mumbai Indians", franchiseName: "Mumbai Indians", shortName: "MI", flagImage: ImageConstants.miFlag, matchPlayed: 14, matchWon: 11, matchDraw: 0, iplFinalWon: 5, firstMatchYear: 2008, ownerId: "Reliance Industries", coach: "Mahela Jayawardene", venue: "Wankhede Stadium, Mumbai", captain: "Rohit Sharma", players: mumbaiIndiansPlayers, teamColor: ColorConstants.miBlue),
    CricketTeam(name: "Punjab Kings", franchiseName: "Punjab Kings", shortName: "PBKS", flagImage: ImageConstants.pbksFlag, matchPlayed: 14, matchWon: 5, matchDraw: 2, iplFinalWon: 0, firstMatchYear: 2008, ownerId: "Mohit Burman, Ness Wadia, Preity Zinta", coach: "Anil Kumble", venue: "Punjab Cricket Association Stadium, Mohali", captain: "S Dhawan", players: punjabKingsPlayers, teamColor: ColorConstants.pbksRed),
    CricketTeam(name: "Rajasthan Royals", franchiseName: "Rajasthan Royals", shortName: "RR", flagImage: ImageConstants.rrFlag, matchPlayed: 14, matchWon: 6, matchDraw: 3, iplFinalWon: 1, firstMatchYear: 2008, ownerId: "Manoj Badale", coach: "Kumar Sangakkara", venue: "Sawai Mansingh Stadium, Jaipur", captain: "Sanju Samson", players: rajasthanRoyalsPlayers, teamColor: ColorConstants.rrPink),
    CricketTeam(name: "Royal Challengers Bangalore", franchiseName: "Royal Challengers Bangalore", shortName: "RCB", flagImage: ImageConstants.rcbFlag, matchPlayed: 14, matchWon: 8, matchDraw: 1, iplFinalWon: 0, firstMatchYear: 2008, ownerId: "United Spirits", coach: "Simon Katich", venue: "M. Chinnaswamy Stadium, Bangalore", captain: "Virat Kohli", players: royalChallengersBangalorePlayers, teamColor: ColorConstants.rcbRed),
    CricketTeam(name: "Sunrisers Hyderabad", franchiseName: "Sunrisers Hyderabad", shortName: "SRH", flagImage: ImageConstants.srhFlag, matchPlayed: 14, matchWon: 7, matchDraw: 2, iplFinalWon: 1, firstMatchYear: 2013, ownerId: "Sun TV Network", coach: "Trevor Bayliss", venue: "Rajiv Gandhi International Cricket Stadium, Hyderabad", captain: "Aiden Markram", players: sunrisersHyderabadPlayers, teamColor: ColorConstants.srhOrange)
]

let cricketTeams = fetchTeamsFromRealm()

extension CricketTeam {
    var wicketKeeperCount: Int {
        players.filter { $0.role == "WK" || $0.role == "WK-Batsman" }.count
    }
    
    var batsmanCount: Int {
        players.filter { $0.role == "Batsman" }.count
    }
    
    var allRounderCount: Int {
        players.filter { $0.role == "All-rounder" }.count
    }
    
    var bowlerCount: Int {
        players.filter { $0.role == "Bowler" }.count
    }
}

// Function to insert Cricket Teams into Realm
func insertCricketTeamsIntoRealm(teams: [CricketTeam]) {
    // Get the default Realm
    guard let realm = try? Realm() else {
        fatalError("Failed to access Realm database")
    }
    
    // Write Cricket Team data into Realm
    try? realm.write {
        for team in teams {
            let realmTeam = RealmCricketTeam()
            realmTeam.id = team.id.uuidString // Assign the id
            realmTeam.name = team.name
            realmTeam.franchiseName = team.franchiseName
            realmTeam.shortName = team.shortName
            realmTeam.flagImage = team.flagImage
            realmTeam.matchPlayed = team.matchPlayed
            realmTeam.matchWon = team.matchWon
            realmTeam.matchDraw = team.matchDraw
            realmTeam.iplFinalWon = team.iplFinalWon
            realmTeam.firstMatchYear = team.firstMatchYear
            realmTeam.ownerId = team.ownerId
            realmTeam.coach = team.coach
            realmTeam.venue = team.venue
            realmTeam.captain = team.captain
            realmTeam.teamColor = team.teamColor.hexString()
            
            // Add the team to Realm
            realm.add(realmTeam)
        }
    }
}

func fetchTeamsFromRealm() -> [CricketTeam] {
    // Get the default Realm
    guard let realm = try? Realm() else {
        fatalError("Failed to access Realm database")
    }
    
    // Fetch CricketTeam objects from Realm
    let realmTeams = realm.objects(RealmCricketTeam.self)
    
    // Map Realm objects to CricketTeam objects
    let teams = realmTeams.map { realmTeam -> CricketTeam in
        // Create CricketTeam objects using data from Realm
        let players = fetchPlayersForTeamFromRealm(teamName: realmTeam.name).map { realmPlayer -> Player in
            // Convert RealmPlayer to Player
            return Player(team: realmPlayer.team,
                          franchise: realmPlayer.franchise,
                          name: realmPlayer.name,
                          shortName: realmPlayer.shortName,
                          role: realmPlayer.role,
                          price: realmPlayer.price,
                          country: realmPlayer.country)
        }
        
        return CricketTeam(id: UUID(),
                           name: realmTeam.name,
                           franchiseName: realmTeam.franchiseName,
                           shortName: realmTeam.shortName,
                           flagImage: realmTeam.flagImage,
                           matchPlayed: realmTeam.matchPlayed,
                           matchWon: realmTeam.matchWon,
                           matchDraw: realmTeam.matchDraw,
                           iplFinalWon: realmTeam.iplFinalWon,
                           firstMatchYear: realmTeam.firstMatchYear,
                           ownerId: realmTeam.ownerId,
                           coach: realmTeam.coach,
                           venue: realmTeam.venue,
                           captain: realmTeam.captain,
                           players: Array(players),
                           teamColor: Color(hex: realmTeam.teamColor))
    }
    
    return Array(teams)
}

