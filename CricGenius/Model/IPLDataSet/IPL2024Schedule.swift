//
//  IPL2024Schedule.swift
//  CricGenius
//
//  Created by Vivek Singh on 06/03/24.
//

import Foundation
import SwiftUI

struct MatchSchedule: Identifiable {
    var id = UUID()
    var date: String
    var time: String
    var homeTeam: String
    var awayTeam: String
    var venue: String
    var city: String
}

let ipl2024Matches = [
    MatchSchedule(date: "2024-03-22", time: "08:00 PM", homeTeam: "Chennai Super Kings", awayTeam: "Royal Challengers Bangalore", venue: "MA Chidambaram Stadium, Chepauk, Chennai", city: "Chennai"),
    MatchSchedule(date: "2024-03-23", time: "03:30 PM", homeTeam: "Punjab Kings", awayTeam: "Delhi Capitals", venue: "Punjab Cricket Association Stadium, Mohali", city: "Mohali"),
    MatchSchedule(date: "2024-03-23", time: "07:30 PM", homeTeam: "Kolkata Knight Riders", awayTeam: "Sunrisers Hyderabad", venue: "Eden Gardens, Kolkata", city: "Kolkata"),
    MatchSchedule(date: "2024-03-24", time: "03:30 PM", homeTeam: "Rajasthan Royals", awayTeam: "Lucknow Super Giants", venue: "Sawai Mansingh Stadium, Jaipur", city: "Jaipur"),
    MatchSchedule(date: "2024-03-24", time: "07:30 PM", homeTeam: "Gujarat Titans", awayTeam: "Mumbai Indians", venue: "Narendra Modi Stadium, Ahmedabad", city: "Ahmedabad"),
    MatchSchedule(date: "2024-03-25", time: "07:30 PM", homeTeam: "Royal Challengers Bangalore", awayTeam: "Punjab Kings", venue: "M.Chinnaswamy Stadium, Bangalore", city: "Bangalore"),
    MatchSchedule(date: "2024-03-26", time: "07:30 PM", homeTeam: "Chennai Super Kings", awayTeam: "Gujarat Titans", venue: "MA Chidambaram Stadium, Chepauk, Chennai", city: "Chennai"),
    MatchSchedule(date: "2024-03-27", time: "07:30 PM", homeTeam: "Sunrisers Hyderabad", awayTeam: "Mumbai Indians", venue: "Rajiv Gandhi International Cricket Stadium, Hyderabad", city: "Hyderabad"),
    MatchSchedule(date: "2024-03-28", time: "07:30 PM", homeTeam: "Rajasthan Royals", awayTeam: "Delhi Capitals", venue: "Sawai Mansingh Stadium, Jaipur", city: "Jaipur"),
    MatchSchedule(date: "2024-03-29", time: "07:30 PM", homeTeam: "Royal Challengers Bangalore", awayTeam: "Kolkata Knight Riders", venue: "M.Chinnaswamy Stadium, Bangalore", city: "Bangalore"),
    MatchSchedule(date: "2024-03-30", time: "07:30 PM", homeTeam: "Lucknow Super Giants", awayTeam: "Punjab Kings", venue: "Ekana International Cricket Stadium, Lucknow", city: "Lucknow"),
    MatchSchedule(date: "2024-03-31", time: "03:30 PM", homeTeam: "Gujarat Titans", awayTeam: "Sunrisers Hyderabad", venue: "Narendra Modi Stadium, Ahmedabad", city: "Ahmedabad"),
    MatchSchedule(date: "2024-03-31", time: "07:30 PM", homeTeam: "Delhi Capitals", awayTeam: "Chennai Super Kings", venue: "ACA-VDCA Stadium, Vizag", city: "Vizag"),
    MatchSchedule(date: "2024-04-01", time: "07:30 PM", homeTeam: "Mumbai Indians", awayTeam: "Rajasthan Royals", venue: "Wankhede Stadium, Mumbai", city: "Mumbai"),
    MatchSchedule(date: "2024-04-02", time: "07:30 PM", homeTeam: "Royal Challengers Bangalore", awayTeam: "Lucknow Super Giants", venue: "M.Chinnaswamy Stadium, Bangalore", city: "Bangalore"),
    MatchSchedule(date: "2024-04-03", time: "07:30 PM", homeTeam: "Delhi Capitals", awayTeam: "Kolkata Knight Riders", venue: "ACA-VDCA Stadium, Vizag", city: "Vizag"),
    MatchSchedule(date: "2024-04-04", time: "07:30 PM", homeTeam: "Gujarat Titans", awayTeam: "Punjab Kings", venue: "Narendra Modi Stadium, Ahmedabad", city: "Ahmedabad"),
    MatchSchedule(date: "2024-04-05", time: "07:30 PM", homeTeam: "Sunrisers Hyderabad", awayTeam: "Chennai Super Kings", venue: "Rajiv Gandhi International Cricket Stadium, Hyderabad", city: "Hyderabad"),
    MatchSchedule(date: "2024-04-06", time: "07:30 PM", homeTeam: "Rajasthan Royals", awayTeam: "Royal Challengers Bangalore", venue: "Sawai Mansingh Stadium, Jaipur", city: "Jaipur"),
    MatchSchedule(date: "2024-04-07", time: "03:30 PM", homeTeam: "Mumbai Indians", awayTeam: "Delhi Capitals", venue: "Wankhede Stadium, Mumbai", city: "Mumbai"),
    MatchSchedule(date: "2024-04-07", time: "07:30 PM", homeTeam: "Lucknow Super Giants", awayTeam: "Gujarat Titans", venue: "Ekana International Cricket Stadium, Lucknow", city: "Lucknow")
]
