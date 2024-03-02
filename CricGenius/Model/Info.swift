//
//  Info.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class InfoObject: Object {
    @Persisted(primaryKey: true) var id = UUID()
    @Persisted var balls_per_over: Int?
    @Persisted var city: String?
    @Persisted var dates = List<String>()
    @Persisted var event: EventObject?
    @Persisted var gender: String?
    @Persisted var match_type: String?
    @Persisted var officials: OfficialsObject?
    @Persisted var outcome: OutcomeObject?
    @Persisted var overs: Int?
    @Persisted var player_of_match = List<String>()
    @Persisted var players = List<PlayerObject>()
    @Persisted var registry: RegistryObject?
    @Persisted var season: String?
    @Persisted var team_type: String?
    @Persisted var teams = List<String>()
    @Persisted var toss: TossObject?
    @Persisted var venue: String?
}

struct Info: Codable {
    let balls_per_over: Int?
    let city: String?
    let dates: [String]?
    let event: Event?
    let gender: String?
    let match_type: String?
    let officials: Officials?
    let outcome: Outcome?
    let overs: Int?
    let player_of_match: [String]?
    let players: [String: [String]]?
    let registry: Registry?
    let season: String?
    let team_type: String?
    let teams: [String]?
    let toss: Toss?
    let venue: String?
    
    enum CodingKeys: String, CodingKey {
        case balls_per_over
        case city
        case dates
        case event
        case gender
        case match_type
        case officials
        case outcome
        case overs
        case player_of_match
        case players
        case registry
        case season
        case team_type
        case teams
        case toss
        case venue
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        balls_per_over = try values.decodeIfPresent(Int.self, forKey: .balls_per_over)
        city = try values.decodeIfPresent(String.self, forKey: .city)
        dates = try values.decodeIfPresent([String].self, forKey: .dates)
        event = try values.decodeIfPresent(Event.self, forKey: .event)
        gender = try values.decodeIfPresent(String.self, forKey: .gender)
        match_type = try values.decodeIfPresent(String.self, forKey: .match_type)
        officials = try values.decodeIfPresent(Officials.self, forKey: .officials)
        outcome = try values.decodeIfPresent(Outcome.self, forKey: .outcome)
        overs = try values.decodeIfPresent(Int.self, forKey: .overs)
        player_of_match = try values.decodeIfPresent([String].self, forKey: .player_of_match)
        players = try values.decodeIfPresent([String: [String]].self, forKey: .players)?.reduce(into: [String: [String]]()) { result, pair in
            let teamName = pair.key
            let players = pair.value
            result[teamName] = players
        } ?? [:]
        registry = try values.decodeIfPresent(Registry.self, forKey: .registry)
        if let intSeason = try? values.decode(Int.self, forKey: .season) {
            season = String(intSeason)
        } else {
            season = try values.decodeIfPresent(String.self, forKey: .season)
        }
        team_type = try values.decodeIfPresent(String.self, forKey: .team_type)
        teams = try values.decodeIfPresent([String].self, forKey: .teams)
        toss = try values.decodeIfPresent(Toss.self, forKey: .toss)
        venue = try values.decodeIfPresent(String.self, forKey: .venue)
    }
}
