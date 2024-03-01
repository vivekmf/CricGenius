//
//  Players.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

// Define Realm model for TeamObject
class PlayerObject: Object {
    @Persisted var teamName: String?
    let players = List<String>()
}

// Define a separate Codable struct for Team
struct Players: Codable {
    let players: [String: [String]]
    
    enum CodingKeys: String, CodingKey {
        case players
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        players = try container.decodeIfPresent([String: [String]].self, forKey: .players) ?? [:]
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(players, forKey: .players)
    }
}
