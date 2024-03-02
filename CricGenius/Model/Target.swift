//
//  Target.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

// Define your Realm model
class TargetObject: Object {
    @Persisted(primaryKey: true) var id = UUID()
    @Persisted var overs: Int = 0
    @Persisted var runs: Int = 0
}

// Define a separate Codable struct for decoding JSON
struct Target: Codable {
    var overs: Int = 0
    var runs: Int = 0
    
    enum CodingKeys: String, CodingKey {
        case overs
        case runs
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        overs = try values.decodeIfPresent(Int.self, forKey: .overs) ?? 0
        runs = try values.decodeIfPresent(Int.self, forKey: .runs) ?? 0
    }
}
