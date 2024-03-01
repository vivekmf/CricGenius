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
        guard let url = Bundle.main.url(forResource: "1412312", withExtension: "json"),
              let jsonData = try? Data(contentsOf: url) else {
            fatalError("Failed to load JSON data")
        }
        
        let decoder = JSONDecoder()
        do {
            let matchDetail = try decoder.decode(MatchDetail.self, from: jsonData)
            print(matchDetail)
            
            // Now you have the decoded data in matchDetail, you can proceed to store it in Realm
            let realm = try Realm()
            try realm.write {
                if let info = matchDetail.info {
                    if let meta = matchDetail.meta {
                        let metaObject = MetaObject()
                        // Set properties of metaObject from meta
                        // For example:
                        metaObject.data_version = meta.data_version
                        metaObject.created = meta.created
                        metaObject.revision = meta.revision
                        realm.add(metaObject, update: .modified)
                    }
                    let infoObject = InfoObject()
                    infoObject.balls_per_over = info.balls_per_over
                    infoObject.city = info.city
                    infoObject.dates.append(objectsIn: info.dates ?? [])
                    
                    // Assuming EventObject, OfficialsObject, OutcomeObject, TossObject,
                    // and RegistryObject are defined similarly to PlayerObject
                    infoObject.event = info.event != nil ? EventObject() : nil
                    infoObject.event?.name = info.event?.name
                    infoObject.event?.match_number = info.event?.match_number
                    
                    infoObject.gender = info.gender
                    infoObject.match_type = info.match_type
                    
                    infoObject.officials = info.officials != nil ? OfficialsObject() : nil
                    // Set properties for officials object similarly
                    
                    infoObject.outcome = info.outcome != nil ? OutcomeObject() : nil
                    // Set properties for outcome object similarly
                    
                    infoObject.overs = info.overs
                    infoObject.player_of_match.append(objectsIn: info.player_of_match ?? [])
                    
                    infoObject.players.append(objectsIn: info.players?.map { (teamName, players) in
                        let playerObject = PlayerObject()
                        playerObject.teamName = teamName
                        playerObject.players.append(objectsIn: players)
                        return playerObject
                    } ?? [])
                    
                    infoObject.registry = info.registry != nil ? RegistryObject() : nil
                    // Set properties for registry object similarly
                    
                    infoObject.season = info.season
                    infoObject.team_type = info.team_type
                    infoObject.teams.append(objectsIn: info.teams ?? [])
                    
                    infoObject.toss = info.toss != nil ? TossObject() : nil
                    // Set properties for toss object similarly
                    
                    infoObject.venue = info.venue
                    
                    realm.add(infoObject)
                }
                if let innings = matchDetail.innings {
                    for inning in innings {
                        let inningsObject = InningsObject()
                        inningsObject.team = inning.team
                        // Assuming OversObject, PowerplaysObject, and TargetObject have properties
                        // and are defined similar to InningsObject
                        if let overs = inning.overs {
                            for over in overs {
                                let oversObject = OversObject()
                                // Set properties of oversObject from over
                                // Add oversObject to inningsObject
                                inningsObject.overs.append(oversObject)
                            }
                        }
                        if let powerplays = inning.powerplays {
                            for powerplay in powerplays {
                                let powerplaysObject = PowerplaysObject()
                                // Set properties of powerplaysObject from powerplay
                                // Add powerplaysObject to inningsObject
                                inningsObject.powerplays.append(powerplaysObject)
                            }
                        }
                        if let target = inning.target {
                            let targetObject = TargetObject()
                            // Set properties of targetObject from target
                            inningsObject.target = targetObject
                        }
                        realm.add(inningsObject)
                    }
                }
            }
            print("Data stored in Realm successfully")
        } catch {
            print("Error decoding or storing data: \(error)")
        }
    }
}
