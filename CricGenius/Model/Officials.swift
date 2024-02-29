//
//  Officials.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class OfficialsObject: Object {
    @Persisted var matchReferees = List<String>()
    @Persisted var reserveUmpires = List<String>()
    @Persisted var tvUmpires = List<String>()
    @Persisted var umpires = List<String>()
}

struct Officials: Codable {
    let matchReferees: [String]?
    let reserveUmpires: [String]?
    let tvUmpires: [String]?
    let umpires: [String]?

    enum CodingKeys: String, CodingKey {
        case matchReferees = "match_referees"
        case reserveUmpires = "reserve_umpires"
        case tvUmpires = "tv_umpires"
        case umpires
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        matchReferees = try values.decodeIfPresent([String].self, forKey: .matchReferees)
        reserveUmpires = try values.decodeIfPresent([String].self, forKey: .reserveUmpires)
        tvUmpires = try values.decodeIfPresent([String].self, forKey: .tvUmpires)
        umpires = try values.decodeIfPresent([String].self, forKey: .umpires)
    }
}
