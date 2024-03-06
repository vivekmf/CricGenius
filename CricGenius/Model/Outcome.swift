//
//  Outcome.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class OutcomeObject: Object {
    @Persisted(primaryKey: true) var id = UUID()
    @Persisted var matchId: UUID?
    @Persisted var winner: String?
    @Persisted var by: ByObject?
    @Persisted var result: String?
}

struct Outcome: Codable {
    let winner: String?
    let by: By?
    let result: String?
    
    enum CodingKeys: String, CodingKey {
        case winner
        case by
        case result
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        winner = try values.decodeIfPresent(String.self, forKey: .winner)
        by = try values.decodeIfPresent(By.self, forKey: .by)
        result = try values.decodeIfPresent(String.self, forKey: .result)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(winner, forKey: .winner)
        try container.encodeIfPresent(by, forKey: .by)
        try container.encodeIfPresent(result, forKey: .result)
    }
}

