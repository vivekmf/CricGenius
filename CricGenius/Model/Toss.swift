//
//  Toss.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import SwiftUI
import RealmSwift

class TossObject: Object {
    @Persisted var decision: String?
    @Persisted var winner: String?
}
struct Toss : Codable {
    let decision : String?
    let winner : String?
    
    enum CodingKeys: String, CodingKey {
        
        case decision = "decision"
        case winner = "winner"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        decision = try values.decodeIfPresent(String.self, forKey: .decision)
        winner = try values.decodeIfPresent(String.self, forKey: .winner)
    }
    
}
