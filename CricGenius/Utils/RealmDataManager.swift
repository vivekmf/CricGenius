//
//  RealmDataManager.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class RealmDataManager {
    static func readAndStoreJSONData() {
        guard let url = Bundle.main.url(forResource: "your_json_file_name", withExtension: "json"),
              let jsonData = try? Data(contentsOf: url) else {
            fatalError("Failed to load JSON data")
        }

        let decoder = JSONDecoder()
        do {
            let matchDetail = try decoder.decode(MatchDetailObject.self, from: jsonData)
            let realm = try Realm()
            try realm.write {
                realm.add(matchDetail)
            }
            print("Data stored in Realm successfully")
        } catch {
            print("Error decoding or storing data: \(error)")
        }
    }
}
