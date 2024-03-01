//
//  MatchDetailModel.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class MatchDetailObject: Object {
    @Persisted var meta: MetaObject?
    @Persisted var info: InfoObject?
    @Persisted var innings = List<InningsObject>()
}

struct MatchDetail: Codable {
    let meta: Meta?
    let info: Info?
    let innings: [Innings]?
    
    enum CodingKeys: String, CodingKey {
        case meta
        case info
        case innings
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        meta = try values.decodeIfPresent(Meta.self, forKey: .meta)
        info = try values.decodeIfPresent(Info.self, forKey: .info)
        innings = try values.decodeIfPresent([Innings].self, forKey: .innings)
    }
}
