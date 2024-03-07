//
//  By.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class ByObject: Object {
    @Persisted(primaryKey: true) var id = UUID()
    @Persisted var matchId: UUID?
    @Persisted var runs: Int?
    @Persisted var wickets: Int?
}

struct By : Codable {
    let runs : Int?
	let wickets : Int?

	enum CodingKeys: String, CodingKey {

        case runs = "runs"
		case wickets = "wickets"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
        runs = try values.decodeIfPresent(Int.self, forKey: .runs)
        wickets = try values.decodeIfPresent(Int.self, forKey: .wickets)
	}
}
