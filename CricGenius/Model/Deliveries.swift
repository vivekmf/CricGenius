//
//  Deliveries.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class DeliveriesObject: Object {
    @Persisted var batter : String?
    @Persisted var bowler : String?
    @Persisted var non_striker : String?
}

struct Deliveries : Codable {
	let batter : String?
	let bowler : String?
	let non_striker : String?
	let runs : Runs?

	enum CodingKeys: String, CodingKey {

		case batter = "batter"
		case bowler = "bowler"
		case non_striker = "non_striker"
		case runs = "runs"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		batter = try values.decodeIfPresent(String.self, forKey: .batter)
		bowler = try values.decodeIfPresent(String.self, forKey: .bowler)
		non_striker = try values.decodeIfPresent(String.self, forKey: .non_striker)
		runs = try values.decodeIfPresent(Runs.self, forKey: .runs)
	}

}
