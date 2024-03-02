//
//  Runs.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import SwiftUI
import RealmSwift

class RunsObject: Object {
    @Persisted(primaryKey: true) var id = UUID()
    @Persisted var batter: Int?
    @Persisted var extras: Int?
    @Persisted var total: Int?
}

struct Runs: Codable {
    let batter: Int?
    let extras: Int?
    let total: Int?

    enum CodingKeys: String, CodingKey {
        case batter
        case extras
        case total
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        batter = try values.decodeIfPresent(Int.self, forKey: .batter)
        extras = try values.decodeIfPresent(Int.self, forKey: .extras)
        total = try values.decodeIfPresent(Int.self, forKey: .total)
    }
}
