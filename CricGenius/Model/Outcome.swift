//
//  Outcome.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class OutcomeObject: Object {
    @Persisted var winner: String?
    @Persisted var runs: Int?
    @Persisted var wickets: Int?
}

struct Outcome: Codable {
    let winner: String?
    let runs: Int?
    let wickets: Int?
    
    enum CodingKeys: String, CodingKey {
        case winner
        case by
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        winner = try values.decodeIfPresent(String.self, forKey: .winner)
        
        if let byContainer = try? values.nestedContainer(keyedBy: By.CodingKeys.self, forKey: .by) {
            runs = try byContainer.decodeIfPresent(Int.self, forKey: .runs)
            wickets = nil
        } else {
            runs = nil
            wickets = try values.decodeIfPresent(Int.self, forKey: .by)
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(winner, forKey: .winner)
        
        if let runs = runs {
            var byContainer = container.nestedContainer(keyedBy: By.CodingKeys.self, forKey: .by)
            try byContainer.encode(runs, forKey: .runs)
        } else if let wickets = wickets {
            try container.encode(wickets, forKey: .by)
        }
    }
}

