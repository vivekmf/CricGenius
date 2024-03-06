//
//  RealmDataManager.swift
//  CricGenius
//
//  Created by Vivek Singh on 29/02/24.
//

import Foundation
import RealmSwift

class RealmDataManager {
    static func readAndStoreJSONData(from url: URL) {
        do {
            let jsonData = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let matchDetail = try decoder.decode(MatchDetail.self, from: jsonData)
            let realm = try Realm()
            try realm.write {
                let matchDetailObject = MatchDetailObject()
                realm.add(matchDetailObject, update: .modified)
                // Create a new List object to store InningsObject instances
                let inningsList = List<InningsObject>()
                if let meta = matchDetail.meta {
                    let metaObject = MetaObject()
                    matchDetailObject.meta = metaObject
                    metaObject.matchId = matchDetailObject.id
                    metaObject.data_version = meta.data_version
                    metaObject.created = meta.created
                    metaObject.revision = meta.revision
                    realm.add(metaObject, update: .modified)
                }
                if let info = matchDetail.info {
                    let infoObject = InfoObject()
                    matchDetailObject.info = infoObject
                    infoObject.matchId = matchDetailObject.id
                    infoObject.balls_per_over = info.balls_per_over
                    infoObject.city = info.city
                    infoObject.dates.append(objectsIn: info.dates ?? [])
                    
                    infoObject.event = info.event != nil ? EventObject() : nil
                    infoObject.event?.matchId = matchDetailObject.id
                    infoObject.event?.name = info.event?.name
                    infoObject.event?.match_number = info.event?.match_number
                    
                    infoObject.gender = info.gender
                    infoObject.match_type = info.match_type
                    
                    infoObject.officials = info.officials != nil ? OfficialsObject() : nil
                    infoObject.officials?.matchId = matchDetailObject.id
                    infoObject.officials?.matchReferees.append(objectsIn: info.officials?.matchReferees ?? [])
                    infoObject.officials?.reserveUmpires.append(objectsIn: info.officials?.reserveUmpires ?? [])
                    infoObject.officials?.tvUmpires.append(objectsIn: info.officials?.tvUmpires ?? [])
                    infoObject.officials?.umpires.append(objectsIn: info.officials?.umpires ?? [])
                    
                    if let outcome = info.outcome {
                        let outcomeObject = OutcomeObject()
                        outcomeObject.matchId = matchDetailObject.id
                        outcomeObject.winner = outcome.winner
                        
                        if outcome.result != nil {
                            outcomeObject.result = outcome.result
                        } else if let by = outcome.by {
                            let byObject = ByObject()
                            byObject.matchId = matchDetailObject.id
                            byObject.runs = by.runs
                            byObject.wickets = by.wickets
                            outcomeObject.by = byObject
                            
                            if let winner = outcome.winner {
                                if let runs = by.runs {
                                    outcomeObject.result = "\(winner) has won by \(runs) runs"
                                } else if let wickets = by.wickets {
                                    outcomeObject.result = "\(winner) has won by \(wickets) wickets"
                                }
                            }
                        }
                        
                        infoObject.outcome = outcomeObject
                    }
                    
                    infoObject.overs = info.overs
                    infoObject.player_of_match.append(objectsIn: info.player_of_match ?? [])
                    
                    for (teamName, players) in info.players ?? [:] {
                        let playerObject = PlayerObject()
                        playerObject.matchId = matchDetailObject.id
                        playerObject.teamName = teamName
                        playerObject.players.append(objectsIn: players)
                        infoObject.players.append(playerObject)
                    }
                    
                    if let registry = matchDetail.info?.registry {
                        let registryObject = RegistryObject()
                        if let people = registry.people {
                            let peopleObject = PeopleObject()
                            peopleObject.matchId = matchDetailObject.id
                            peopleObject.players.append(objectsIn: Array(people.keys))
                            registryObject.people.append(peopleObject)
                            registryObject.matchId = matchDetailObject.id
                        }
                        
                        infoObject.registry = registryObject
                    }
                    infoObject.season = info.season
                    infoObject.team_type = info.team_type
                    infoObject.teams.append(objectsIn: info.teams ?? [])
                    infoObject.toss = info.toss != nil ? TossObject() : nil
                    infoObject.toss?.matchId = matchDetailObject.id
                    infoObject.toss?.decision = info.toss?.decision
                    infoObject.toss?.winner = info.toss?.winner
                    infoObject.venue = info.venue
                    
                    realm.add(infoObject)
                }
                if let innings = matchDetail.innings {
                    for inning in innings {
                        let inningsObject = InningsObject()
                        inningsObject.matchId = matchDetailObject.id
                        inningsObject.team = inning.team
                        
                        if let overs = inning.overs {
                            for over in overs {
                                let oversObject = OversObject()
                                oversObject.matchId = matchDetailObject.id
                                oversObject.over = over.over
                                
                                // Check if over.deliveries is not nil before iterating over it
                                if let deliveries = over.deliveries {
                                    for delivery in deliveries {
                                        let deliveriesObject = DeliveriesObject()
                                        deliveriesObject.matchId = matchDetailObject.id
                                        deliveriesObject.batter = delivery.batter
                                        deliveriesObject.bowler = delivery.bowler
                                        deliveriesObject.non_striker = delivery.non_striker
                                        
                                        // Create a runsObject and set its properties
                                        let runsObject = RunsObject()
                                        runsObject.matchId = matchDetailObject.id
                                        runsObject.batter = delivery.runs?.batter
                                        runsObject.extras = delivery.runs?.extras
                                        runsObject.total = delivery.runs?.total
                                        
                                        // Now add runsObject to deliveriesObject
                                        deliveriesObject.runs = runsObject
                                        
                                        oversObject.deliveries.append(deliveriesObject)
                                    }
                                }
                                
                                inningsObject.overs.append(oversObject)
                            }
                        }
                        
                        if let powerplays = inning.powerplays {
                            for powerplay in powerplays {
                                let powerplaysObject = PowerplaysObject()
                                // Assuming from, to, and type are List<String> properties in PowerplaysObject
                                if let from = powerplay.from, let to = powerplay.to, let type = powerplay.type {
                                    powerplaysObject.matchId = matchDetailObject.id
                                    powerplaysObject.from = from
                                    powerplaysObject.to = to
                                    powerplaysObject.type = type
                                    inningsObject.powerplays.append(powerplaysObject)
                                }
                            }
                        }
                        
                        if let target = inning.target {
                            let targetObject = TargetObject()
                            targetObject.matchId = matchDetailObject.id
                            targetObject.overs = target.overs
                            targetObject.runs = target.runs
                            inningsObject.target = targetObject
                        }
                        
                        realm.add(inningsObject, update: .modified)
                        
                        // Add the inningsObject to the inningsList
                        inningsList.append(inningsObject)
                    }
                }
                // Assign the inningsList to matchDetailObject.innings
                matchDetailObject.innings = inningsList
            }
            print("Data stored in Realm successfully")
        } catch {
            print("Error decoding or storing data from file \(url.lastPathComponent): \(error)")
        }
    }
}

