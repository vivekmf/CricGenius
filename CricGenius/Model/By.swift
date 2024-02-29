//
//  By.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class ByObject: Object {
    @Persisted var runs: Int?
}

struct By : Codable {
	let runs : Int?

	enum CodingKeys: String, CodingKey {

		case runs = "runs"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		runs = try values.decodeIfPresent(Int.self, forKey: .runs)
	}

}
