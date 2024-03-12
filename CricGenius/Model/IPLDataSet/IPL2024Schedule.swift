//
//  IPL2024Schedule.swift
//  CricGenius
//
//  Created by Vivek Singh on 06/03/24.
//

import Foundation
import SwiftUI

struct UpcomingMatchSchedule: Identifiable {
    var id = UUID()
    var date: String
    var time: String
    var homeTeam: CricketTeam
    var awayTeam: CricketTeam
    var venue: String
    var city: String
}

let ipl2024MatchSchedule = [
    UpcomingMatchSchedule(date: "2024-03-22", time: "08:00 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "CSK" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "RCB" })!, venue: "MA Chidambaram Stadium, Chepauk, Chennai", city: "Chennai"),
    UpcomingMatchSchedule(date: "2024-03-23", time: "03:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "PBKS" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "DC" })!, venue: "Punjab Cricket Association Stadium, Mohali", city: "Mohali"),
    UpcomingMatchSchedule(date: "2024-03-23", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "KKR" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "SRH" })!, venue: "Eden Gardens, Kolkata", city: "Kolkata"),
    UpcomingMatchSchedule(date: "2024-03-24", time: "03:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "RR" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "LSG" })!, venue: "Sawai Mansingh Stadium, Jaipur", city: "Jaipur"),
    UpcomingMatchSchedule(date: "2024-03-24", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "GT" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "MI" })!, venue: "Narendra Modi Stadium, Ahmedabad", city: "Ahmedabad"),
    UpcomingMatchSchedule(date: "2024-03-25", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "RCB" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "PBKS" })!, venue: "M.Chinnaswamy Stadium, Bangalore", city: "Bangalore"),
    UpcomingMatchSchedule(date: "2024-03-26", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "CSK" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "GT" })!, venue: "MA Chidambaram Stadium, Chepauk, Chennai", city: "Chennai"),
    UpcomingMatchSchedule(date: "2024-03-27", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "SRH" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "MI" })!, venue: "Rajiv Gandhi International Cricket Stadium, Hyderabad", city: "Hyderabad"),
    UpcomingMatchSchedule(date: "2024-03-28", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "RR" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "DC" })!, venue: "Sawai Mansingh Stadium, Jaipur", city: "Jaipur"),
    UpcomingMatchSchedule(date: "2024-03-29", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "RCB" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "KKR" })!, venue: "M.Chinnaswamy Stadium, Bangalore", city: "Bangalore"),
    UpcomingMatchSchedule(date: "2024-03-30", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "LSG" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "PBKS" })!, venue: "Ekana International Cricket Stadium, Lucknow", city: "Lucknow"),
    UpcomingMatchSchedule(date: "2024-03-31", time: "03:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "GT" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "SRH" })!, venue: "Narendra Modi Stadium, Ahmedabad", city: "Ahmedabad"),
    UpcomingMatchSchedule(date: "2024-03-31", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "DC" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "CSK" })!, venue: "ACA-VDCA Stadium, Vizag", city: "Vizag"),
    UpcomingMatchSchedule(date: "2024-04-01", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "MI" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "RR" })!, venue: "Wankhede Stadium, Mumbai", city: "Mumbai"),
    UpcomingMatchSchedule(date: "2024-04-02", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "RCB" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "LSG" })!, venue: "M.Chinnaswamy Stadium, Bangalore", city: "Bangalore"),
    UpcomingMatchSchedule(date: "2024-04-03", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "DC" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "KKR" })!, venue: "ACA-VDCA Stadium, Vizag", city: "Vizag"),
    UpcomingMatchSchedule(date: "2024-04-04", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "GT" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "PBKS" })!, venue: "Narendra Modi Stadium, Ahmedabad", city: "Ahmedabad"),
    UpcomingMatchSchedule(date: "2024-04-05", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "SRH" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "CSK" })!, venue: "Rajiv Gandhi International Cricket Stadium, Hyderabad", city: "Hyderabad"),
    UpcomingMatchSchedule(date: "2024-04-06", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "RR" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "RCB" })!, venue: "Sawai Mansingh Stadium, Jaipur", city: "Jaipur"),
    UpcomingMatchSchedule(date: "2024-04-07", time: "03:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "MI" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "DC" })!, venue: "Wankhede Stadium, Mumbai", city: "Mumbai"),
    UpcomingMatchSchedule(date: "2024-04-07", time: "07:30 PM", homeTeam: ipl2024Teams.first(where: { $0.shortName == "LSG" })!, awayTeam: ipl2024Teams.first(where: { $0.shortName == "GT" })!, venue: "Ekana International Cricket Stadium, Lucknow", city: "Lucknow")
]
