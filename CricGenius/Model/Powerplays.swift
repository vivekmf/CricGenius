//
//  Powerplays.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class PowerplaysObject: Object {
    @Persisted var from: List<String>
    @Persisted var to: List<String>
    @Persisted var type: List<String>
}

struct Powerplays : Codable {
    let from : Double?
    let to : Double?
    let type : String?
    
    enum CodingKeys: String, CodingKey {
        
        case from = "from"
        case to = "to"
        case type = "type"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        from = try values.decodeIfPresent(Double.self, forKey: .from)
        to = try values.decodeIfPresent(Double.self, forKey: .to)
        type = try values.decodeIfPresent(String.self, forKey: .type)
    }
    
}
