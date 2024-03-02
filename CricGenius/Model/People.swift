//
//  People.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class PeopleObject: Object {
    @Persisted(primaryKey: true) var id = UUID()
    @Persisted var players: List<String>
}

struct People: Codable {
    let players: [String: String]
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.players = try container.decode([String: String].self, forKey: .players)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(players, forKey: .players)
    }
    
    enum CodingKeys: String, CodingKey {
        case players
    }
}
