//
//  Meta.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class MetaObject: Object {
    @Persisted var data_version: String?
    @Persisted var created: String?
    @Persisted var revision: Int?
}

struct Meta : Codable {
    let data_version : String?
    let created : String?
    let revision : Int?

    enum CodingKeys: String, CodingKey {
        case data_version = "data_version"
        case created = "created"
        case revision = "revision"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data_version = try values.decodeIfPresent(String.self, forKey: .data_version)
        created = try values.decodeIfPresent(String.self, forKey: .created)
        revision = try values.decodeIfPresent(Int.self, forKey: .revision)
    }
}
