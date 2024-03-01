//
//  People.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class PeopleObject: Object {
    @Persisted var players: List<String>
}

struct People: Codable {
    let players: [String: String]
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let playersList = try container.decode(List<String>.self, forKey: .players)
        self.players = Dictionary(uniqueKeysWithValues: playersList.map { ($0, "") })
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        let playerList = List<String>()
        playerList.append(objectsIn: players.keys)
        try container.encode(playerList, forKey: .players)
    }
    
    enum CodingKeys: String, CodingKey {
        case players
    }
}
