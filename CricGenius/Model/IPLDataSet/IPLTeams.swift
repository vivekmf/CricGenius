//
//  IPLTeams.swift
//  CricGenius
//
//  Created by Vivek Singh on 06/03/24.
//

import Foundation
import SwiftUI

struct IPLTeam: Identifiable {
    var id = UUID()
    var name: String
    var franchiseName: String
    var shortName: String
    var flagImage: String
    var matchPlayed: Int
    var matchWon: Int
    var matchDraw: Int
    var iplFinalWon: Int
    var firstMatchYear: Int
    var ownerId: String
    var coach: String
    var venue: String
    var captain: String
}

let ipl2024Teams = [
    
    IPLTeam(name: "Chennai Super Kings", franchiseName: "Chennai Super Kings", shortName: "CSK", flagImage: "csk_flag", matchPlayed: 14, matchWon: 10, matchDraw: 1, iplFinalWon: 5, firstMatchYear: 2008, ownerId: "N. Srinivasan", coach: "Stephen Fleming", venue: "MA Chidambaram Stadium, Chepauk, Chennai", captain: "MS Dhoni"),
    IPLTeam(name: "Delhi Capitals", franchiseName: "Delhi Capitals", shortName: "DC", flagImage: "dc_flag", matchPlayed: 14, matchWon: 9, matchDraw: 2, iplFinalWon: 0, firstMatchYear: 2008, ownerId: "JSW Group", coach: "Ricky Ponting", venue: "Arun Jaitley Stadium, Delhi", captain: "Rishabh Pant"),
    IPLTeam(name: "Gujarat Titans", franchiseName: "Gujarat Titans", shortName: "GT", flagImage: "gt_flag", matchPlayed: 14, matchWon: 7, matchDraw: 3, iplFinalWon: 0, firstMatchYear: 2016, ownerId: "RPSG Group", coach: "Mohammad Kaif", venue: "Narendra Modi Stadium, Ahmedabad", captain: "Shubman Gill"),
    IPLTeam(name: "Kolkata Knight Riders", franchiseName: "Kolkata Knight Riders", shortName: "KKR", flagImage: "kkr_flag", matchPlayed: 14, matchWon: 8, matchDraw: 1, iplFinalWon: 2, firstMatchYear: 2008, ownerId: "Knight Riders Group", coach: "Brendon McCullum", venue: "Eden Gardens, Kolkata", captain: "Shreyas Iyer"),
    IPLTeam(name: "Lucknow Super Giants", franchiseName: "Lucknow Super Giants", shortName: "LSG", flagImage: "lsg_flag", matchPlayed: 14, matchWon: 6, matchDraw: 2, iplFinalWon: 0, firstMatchYear: 2022, ownerId: "RPSG Group", coach: "Andy Flower", venue: "Ekana International Cricket Stadium, Lucknow", captain: "KL Rahul"),
    IPLTeam(name: "Mumbai Indians", franchiseName: "Mumbai Indians", shortName: "MI", flagImage: "mi_flag", matchPlayed: 14, matchWon: 11, matchDraw: 0, iplFinalWon: 5, firstMatchYear: 2008, ownerId: "Reliance Industries", coach: "Mahela Jayawardene", venue: "Wankhede Stadium, Mumbai", captain: "Rohit Sharma"),
    IPLTeam(name: "Punjab Kings", franchiseName: "Punjab Kings", shortName: "PBKS", flagImage: "pbks_flag", matchPlayed: 14, matchWon: 5, matchDraw: 2, iplFinalWon: 0, firstMatchYear: 2008, ownerId: "Mohit Burman, Ness Wadia, Preity Zinta", coach: "Anil Kumble", venue: "Punjab Cricket Association Stadium, Mohali", captain: "Shikhar Dhawan"),
    IPLTeam(name: "Rajasthan Royals", franchiseName: "Rajasthan Royals", shortName: "RR", flagImage: "rr_flag", matchPlayed: 14, matchWon: 6, matchDraw: 3, iplFinalWon: 1, firstMatchYear: 2008, ownerId: "Manoj Badale", coach: "Kumar Sangakkara", venue: "Sawai Mansingh Stadium, Jaipur", captain: "Sanju Samson"),
    IPLTeam(name: "Royal Challengers Bangalore", franchiseName: "Royal Challengers Bangalore", shortName: "RCB", flagImage: "rcb_flag", matchPlayed: 14, matchWon: 8, matchDraw: 1, iplFinalWon: 0, firstMatchYear: 2008, ownerId: "United Spirits", coach: "Simon Katich", venue: "M. Chinnaswamy Stadium, Bangalore", captain: "Virat Kohli"),
    IPLTeam(name: "Sunrisers Hyderabad", franchiseName: "Sunrisers Hyderabad", shortName: "SRH", flagImage: "srh_flag", matchPlayed: 14, matchWon: 7, matchDraw: 2, iplFinalWon: 1, firstMatchYear: 2013, ownerId: "Sun TV Network", coach: "Trevor Bayliss", venue: "Rajiv Gandhi International Cricket Stadium, Hyderabad", captain: "Aiden Markram")
]
