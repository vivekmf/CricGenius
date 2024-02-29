//
//  RealmManager.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class RealmManager {
    static let shared = RealmManager()
    
    private let realm: Realm
    
    private init() {
        // Initialize Realm
        do {
            self.realm = try Realm()
        } catch {
            fatalError("Failed to initialize Realm: \(error)")
        }
    }
    
    func insertData<T: Object>(objects: [T]) throws {
        do {
            try realm.write {
                realm.add(objects)
            }
        } catch {
            throw error
        }
    }
}
