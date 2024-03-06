//
//  Deliveries.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class DeliveriesObject: Object {
    @Persisted(primaryKey: true) var id = UUID()
    @Persisted var matchId: UUID?
    @Persisted var batter: String?
    @Persisted var bowler: String?
    @Persisted var non_striker: String?
    @Persisted var runs: RunsObject?
}

struct Deliveries: Codable {
    let batter: String?
    let bowler: String?
    let non_striker: String?
    let runs: Runs?

    enum CodingKeys: String, CodingKey {
        case batter
        case bowler
        case non_striker
        case runs
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        batter = try values.decodeIfPresent(String.self, forKey: .batter)
        bowler = try values.decodeIfPresent(String.self, forKey: .bowler)
        non_striker = try values.decodeIfPresent(String.self, forKey: .non_striker)
        runs = try values.decodeIfPresent(Runs.self, forKey: .runs)
    }
}
