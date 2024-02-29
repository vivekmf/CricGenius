//
//  Players.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

// Define Realm model for PlayerObject
class PlayerObject: Object {
    let players = List<String>()
}

// Define a separate Codable struct for Player
struct Player: Codable {
    let players: [String: [String]]?

    enum CodingKeys: String, CodingKey {
        case players
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        players = try values.decodeIfPresent([String: [String]].self, forKey: .players)
    }
}
