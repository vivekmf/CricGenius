//
//  Overs.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class OversObject: Object {
    @Persisted(primaryKey: true) var id = UUID()
    @Persisted var matchId: UUID?
    @Persisted var over: Double?
    @Persisted var deliveries = List<DeliveriesObject>()
}

struct Overs : Codable {
    let over : Double?
    let deliveries : [Deliveries]?
    
    enum CodingKeys: String, CodingKey {
        
        case over = "over"
        case deliveries = "deliveries"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        if let intOver = try? values.decode(Int.self, forKey: .over) {
            over = Double(intOver) // Convert the Int to Double
        } else {
            over = try values.decodeIfPresent(Double.self, forKey: .over)
        }
        deliveries = try values.decodeIfPresent([Deliveries].self, forKey: .deliveries)
    }
    
}
