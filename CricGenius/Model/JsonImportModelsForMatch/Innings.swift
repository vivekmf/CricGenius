//
//  Innings.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class InningsObject: Object {
    @Persisted(primaryKey: true) var id = UUID()
    @Persisted var matchId: UUID?
    @Persisted var team: String?
    @Persisted var overs = List<OversObject>()
    @Persisted var powerplays = List<PowerplaysObject>()
    @Persisted var target: TargetObject?
}

struct Innings: Codable {
    let team: String?
    let overs: [Overs]?
    let powerplays: [Powerplays]?
    let target: Target?
    
    enum CodingKeys: String, CodingKey {
        case team
        case overs
        case powerplays
        case target
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        team = try values.decodeIfPresent(String.self, forKey: .team)
        overs = try values.decodeIfPresent([Overs].self, forKey: .overs)
        powerplays = try values.decodeIfPresent([Powerplays].self, forKey: .powerplays)
        target = try values.decodeIfPresent(Target.self, forKey: .target)
    }
}
