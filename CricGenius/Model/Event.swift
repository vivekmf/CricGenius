//
//  Event.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class EventObject: Object {
    @Persisted(primaryKey: true) var id = UUID()
    @Persisted var name: String?
    @Persisted var match_number: Int?
}

struct Event : Codable {
	let name : String?
	let match_number : Int?

	enum CodingKeys: String, CodingKey {

		case name = "name"
		case match_number = "match_number"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		match_number = try values.decodeIfPresent(Int.self, forKey: .match_number)
	}

}
