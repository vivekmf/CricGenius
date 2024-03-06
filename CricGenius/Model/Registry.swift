//
//  Registry.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

// Define your Realm model
class RegistryObject: Object {
    @Persisted(primaryKey: true) var id = UUID()
    @Persisted var matchId: UUID?
    @Persisted var people = List<PeopleObject>()
}

// Define a separate Codable struct for decoding JSON
struct Registry: Codable {
    let people: [String: String]?
    
    enum CodingKeys: String, CodingKey {
        case people
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        people = try values.decodeIfPresent([String: String].self, forKey: .people)
    }
}
