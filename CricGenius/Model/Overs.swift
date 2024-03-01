//
//  Overs.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class OversObject: Object {
    @Persisted var over: Int?
    @Persisted var deliveries = List<String>()
}

struct Overs : Codable {
    let over : Int?
    let deliveries : [Deliveries]?
    
    enum CodingKeys: String, CodingKey {
        
        case over = "over"
        case deliveries = "deliveries"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        over = try values.decodeIfPresent(Int.self, forKey: .over)
        deliveries = try values.decodeIfPresent([Deliveries].self, forKey: .deliveries)
    }
    
}
