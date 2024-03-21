//
//  TeamPlayers.swift
//  CricGenius
//
//  Created by Vivek Singh on 06/03/24.
//

import Foundation
import SwiftUI
import RealmSwift

// Realm model for Player
class RealmPlayer: Object {
    @Persisted(primaryKey: true) var id = UUID().uuidString
    @Persisted var team: String = ""
    @Persisted var franchise: String = ""
    @Persisted var name: String = ""
    @Persisted var shortName: String = ""
    @Persisted var role: String = ""
    @Persisted var price: String = ""
    @Persisted var country: String = ""
}

struct Player: Identifiable {
    var id = UUID()
    var team: String
    var franchise: String
    var name: String
    var shortName: String
    var role: String
    var price: String
    var country: String
}

let chennaiSuperKingsPlayers: [Player] = [
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "MS Dhoni", shortName: "MS Dhoni", role: "WK-Batsman", price: "INR 12 Cr(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Ruturaj Gaikwad", shortName: "RD Gaikwad", role: "Batsman", price: "INR 6 Cr(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Devon Conway", shortName: "DP Conway", role: "Batsman", price: "INR 1 crores(R)", country: "New Zealand"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Deepak Chahar", shortName: "DL Chahar", role: "Bowler", price: "INR 14 crores(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Tushar Deshpande", shortName: "TU Deshpande", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Maheesh Theekshana", shortName: "M Theekshana", role: "Bowler", price: "INR 70 Lakhs(R)", country: "Sri Lanka"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Simranjeet Singh", shortName: "Simranjeet Singh", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Matheesha Pathirana", shortName: "M Pathirana", role: "Bowler", price: "INR 20 Lakhs(R)", country: "Sri Lanka"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Prashant Solanki", shortName: "PH Solanki", role: "Bowler", price: "INR 1.20 crores(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Mitchell Santner", shortName: "MJ Santner", role: "Bowler", price: "INR 1.90 crores(R)", country: "New Zealand"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Rajvardhan Hangargekar", shortName: "Rajvardhan Hangargekar", role: "Bowler", price: "INR 1.50 crores(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Ravindra Jadeja", shortName: "RA Jadeja", role: "All-rounder", price: "INR 16 Cr(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Moeen Ali", shortName: "MM Ali", role: "All-rounder", price: "INR 8 Cr(R)", country: "England"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Shivam Dube", shortName: "S Dube", role: "All-rounder", price: "INR 4 crores(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Ajinkya Rahane", shortName: "AM Rahane", role: "Batsman", price: "INR 50 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Nishant Sindhu", shortName: "Nishant Sindhu", role: "All-rounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Shaik Rasheed", shortName: "Shaik Rasheed", role: "Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Ajay Mandal", shortName: "Ajay Mandal", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Mukesh Choudhary", shortName: "Mukesh Choudhary", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Rachin Ravindra", shortName: "Rachin Ravindra", role: "All-rounder", price: "INR 1.80 Crores", country: "New Zealand"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Shardul Thakur", shortName: "SN Thakur", role: "All-rounder", price: "INR 4 Crores", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Daryl Mitchell", shortName: "DJ Mitchell", role: "All-rounder", price: "INR 14 Crore", country: "New Zealand"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Sameer Rizvi", shortName: "Sameer Rizvi", role: "Batsman", price: "INR 8.40 Crore", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Mustafizur Rahman", shortName: "Mustafizur Rahman", role: "Bowler", price: "INR 2 Crore", country: "Bangladesh"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Avanish Rao Aravelly", shortName: "Avanish Rao Aravelly", role: "WK-Batsman", price: "INR 20 Lakhs", country: "India")
]

let delhiCapitalsPlayers: [Player] = [
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Rishabh Pant", shortName: "RR Pant", role: "WT-Batsman", price: "TBA", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Abhishek Porel", shortName: "Abishek Porel", role: "WT-Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Prithvi Shaw", shortName: "PP Shaw", role: "Batsman", price: "INR 7.50Cr(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "David Warner", shortName: "DA Warner", role: "Batsman", price: "INR 6.25 Crores(R)", country: "Australia"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Yash Dhull", shortName: "YV Dhull", role: "Batsman", price: "INR 50 Lakhs(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Anrich Nortje", shortName: "A Nortje", role: "Bowler", price: "INR 6.50 Cr(R)", country: "South Africa"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Lungi Ngidi", shortName: "L Ngidi", role: "Bowler", price: "INR 50 Lakhs(R)", country: "South Africa"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Khaleel Ahmed", shortName: "KK Ahmed", role: "Bowler", price: "INR 5.25 crores(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Praveen Dubey", shortName: "P Dubey", role: "Bowler", price: "INR 50 Lakhs(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Kuldeep Yadav", shortName: "K Yadav", role: "Bowler", price: "INR 2 crores(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Axar Patel", shortName: "AR Patel", role: "All-rounder", price: "INR 9 crores(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Mitchell Marsh", shortName: "SE Marsh", role: "All-rounder", price: "INR 6.50 Crores(R)", country: "Australia"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Lalit Yadav", shortName: "Lalit Yadav", role: "All-rounder", price: "INR 65 Lakhs(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Vicky Ostwal", shortName: "Vicky Ostwal", role: "All-rounder", price: "INR 20 Lakh(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Ishant Sharma", shortName: "I Sharma", role: "Bowler", price: "INR 50 lakh(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Mukesh Kumar", shortName: "Mukesh Kumar", role: "Bowler", price: "INR 5.5 crores(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Harry Brook", shortName: "HC Brook", role: "Batsman", price: "INR 4 Crores", country: "England"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Tristan Stubbs", shortName: "T Stubbs", role: "WT-Batsman", price: "INR 50 Lakh", country: "South Africa"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Ricky Bhui", shortName: "RK Bhui", role: "WT-Batsman", price: "INR 20 Lakh", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Kumar Kushagra", shortName: "Kumar Kushagra", role: "WT-Batsman", price: "INR 7.20 Crore", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Rasikh Dar", shortName: "Rasikh Dar", role: "Bowler", price: "INR 20 Lakh", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Jhye Richardson", shortName: "JA Richardson", role: "Bowler", price: "INR 5 Crore", country: "Australia"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Sumit Kumar", shortName: "Sumit Kumar", role: "All-rounder", price: "INR 1 Crore", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Shai Hope", shortName: "Shai Hope", role: "WT-Batsman", price: "INR 75 Lakh", country: "West Indies"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Swastik Chikara", shortName: "Swastik Chikara", role: "Batsman", price: "INR 20 Lakh", country: "India")
]

let gujaratTitansPlayers: [Player] = [
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Shubman Gill", shortName: "Shubman Gill", role: "Batsman", price: "INR 8 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Sai Sudarshan", shortName: "Sai Sudarshan", role: "Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Abhinav Manohar", shortName: "A Manohar", role: "Batsman", price: "INR 2.60 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "David Miller", shortName: "DA Miller", role: "Batsman", price: "INR 3 crores(R)", country: "South Africa"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Kane Williamson", shortName: "KS Williamson", role: "Batsman", price: "INR 2 crores(R)", country: "New Zealand"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Matthew Wade (wk)", shortName: "MS Wade", role: "WK-Batsman", price: "INR 2.40 Crores(R)", country: "Australia"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Wriddhiman Saha (wk)", shortName: "WP Saha", role: "WK-Batsman", price: "INR 1.90 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Rashid Khan", shortName: "Rashid Khan", role: "Bowler", price: "INR 15 Crores(R)", country: "Afghanistan"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Darshan Nalkande", shortName: "DG Nalkande", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "R Sai Kishore", shortName: "R Sai Kishore", role: "Bowler", price: "INR 3 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Noor Ahmad", shortName: "Noor Ahmad", role: "Bowler", price: "INR 30 Lakhs(R)", country: "Afghanistan"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Vijay Shankar", shortName: "V Shankar", role: "All-rounder", price: "INR 1.40 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Jayant Yadav", shortName: "J Yadav", role: "All-rounder", price: "INR 1.70 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Rahul Tewatia", shortName: "R Tewatia", role: "All-rounder", price: "INR 9 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Joshua Little", shortName: "J Little", role: "Bowler", price: "INR 4.4 crore(R)", country: "Ireland"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Mohit Sharma", shortName: "MM Sharma", role: "Bowler", price: "INR 50 lakh(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Azmatullah Omarzai", shortName: "Azmatullah Omarzai", role: "All-rounder", price: "INR 50 lakh", country: "Afghanistan"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Umesh Yadav", shortName: "UT Yadav", role: "Bowler", price: "INR 5.8 Crore", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Shahrukh Khan", shortName: "M Shahrukh Khan", role: "All-rounder", price: "INR 7.40 Crore", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Sushant Mishra", shortName: "Sushant Mishra", role: "Bowler", price: "INR 2.20 Crore", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Kartik Tyagi", shortName: "Kartik Tyagi", role: "Bowler", price: "INR 60 Lakh", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Manav Suthar", shortName: "Manav Suthar", role: "Bowler", price: "INR 20 Lakh", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Spencer Johnson", shortName: "Spencer Johnson", role: "Bowler", price: "INR 10 Crore", country: "Australia"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Robin Minz", shortName: "Robin Minz", role: "WK-Batsman", price: "INR 3.60 Crore", country: "India")
]

let kolkataKnightRidersPlayers: [Player] = [
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Shreyas Iyer", shortName: "SS Iyer", role: "Batsman", price: "INR 12.25 Crores(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Nitish Rana", shortName: "N Rana", role: "Batsman", price: "INR 8 crores(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Rinku Singh", shortName: "Rinku Singh", role: "Batsman", price: "INR 55 Lakhs(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Varun Chakravarty", shortName: "CV Varun", role: "Bowler", price: "INR 8 Cr(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Andre Russell", shortName: "AD Russell", role: "All-rounder", price: "INR 12 Cr(R)", country: "West Indies"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Venkatesh Iyer", shortName: "VR Iyer", role: "All-rounder", price: "INR 8 Cr(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Sunil Narine", shortName: "SP Narine", role: "All-rounder", price: "INR 6 Cr(R)", country: "West Indies"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Anukul Roy", shortName: "Anukul Roy", role: "All-rounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Rahmanullah Gurbaz", shortName: "Rahmanullah Gurbaz", role: "WK-Batsman", price: "INR 50 Lakhs(R)", country: "Afghanistan"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Harshit Rana", shortName: "Harshit Rana", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Vaibhav Arora", shortName: "VG Arora", role: "Bowler", price: "INR 60 lakh(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Suyash Sharma", shortName: "Suyash Sharma", role: "Bowler", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Jason Roy", shortName: "JJ Roy", role: "Batsman", price: "INR 2.8 crore(R)", country: "England"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "KS Bharat", shortName: "KS Bharat", role: "WK-Batsman", price: "INR 50 Lakhs", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Chetan Sakaria", shortName: "Chetan Sakaria", role: "Bowler", price: "INR 50 Lakhs", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Mitchell Starc", shortName: "MA Starc", role: "Bowler", price: "INR 24.75 Crore", country: "Australia"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Angkrish Raghuvanshi", shortName: "Angkrish Raghuvanshi", role: "Batsman", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Ramandeep Singh", shortName: "Ramandeep Singh", role: "All-rounder", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Sherfane Rutherford", shortName: "SE Rutherford", role: "Batsman", price: "INR 1.50 Crore", country: "West Indies"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Manish Pandey", shortName: "Manish Pandey", role: "Batsman", price: "INR 50 Lakhs", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Mujeeb Rahman", shortName: "Mujeeb Ur Rahman", role: "Bowler", price: "INR 2 Crore", country: "Afghanistan"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Sakib Hussain", shortName: "Sakib Hussain", role: "Bowler", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Dushmantha Chameera", shortName: "PVD Chameera", role: "Bowler", price: "INR 50 Lakh", country: "Sri Lanka")
]

let lucknowSuperGiantsPlayers: [Player] = [
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "KL Rahul", shortName: "KL Rahul", role: "WK-Batsman", price: "INR 17 Crores(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Quinton de Kock (wk)", shortName: "Q de Kock", role: "WK-Batsman", price: "INR 6.75 Crores(R)", country: "South Africa"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Ravi Bishnoi", shortName: "Ravi Bishnoi", role: "Bowler", price: "INR 4 Crores(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Mohsin Khan", shortName: "Mohsin Khan", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Marcus Stoinis", shortName: "MP Stoinis", role: "All-rounder", price: "INR 9.2 Crores(R)", country: "Australia"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Kyle Mayers", shortName: "Kyle Mayers", role: "All-rounder", price: "INR 50 Lakhs(R)", country: "West Indies"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Ayush Badoni", shortName: "A Badoni", role: "All-rounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Deepak Hooda", shortName: "DJ Hooda", role: "All-rounder", price: "INR 5.75 Crores(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Krunal Pandya", shortName: "KH Pandya", role: "All-rounder", price: "INR 8.25 Crores(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Nicholas Pooran", shortName: "N Pooran", role: "WK-Batsman", price: "INR 16 crore(R)", country: "West Indies"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Yash Thakur", shortName: "Yash Thakur", role: "Bowler", price: "INR 45 lakh(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Amit Mishra", shortName: "A Mishra", role: "Bowler", price: "INR 50 lakh(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Prerak Mankad", shortName: "PN Mankad", role: "All-rounder", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Naveen-ul-Haq", shortName: "Naveen-ul-Haq", role: "Bowler", price: "INR 50 lakh(R)", country: "Afghanistan"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Yudhvir Singh", shortName: "Yudhvir Singh", role: "All-rounder", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Devdutt Padikkal", shortName: "D Padikkal", role: "Batsman", price: "Traded from RR", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Krishnappa Gowthan", shortName: "Krishnappa Gowthan", role: "All-rounder", price: "INR 90 lakh(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Mayank Yadav", shortName: "Mayank Yadav", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Shivam Mavi", shortName: "Shivam Mavi", role: "Bowler", price: "INR 6.4 Crores", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Arshin Kulkarni", shortName: "Arshin Kulkarni", role: "All-rounder", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "M. Siddharth", shortName: "M. Siddharth", role: "Bowler", price: "INR 2.40 Crore", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Ashton Turner", shortName: "AJ Turner", role: "Batsman", price: "INR 1 Crore", country: "Australia"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "David Willey", shortName: "DJ Willey", role: "All-rounder", price: "INR 2 Crore", country: "England"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Arshad Khan", shortName: "Arshad Khan", role: "All-rounder", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Shamar Joseph", shortName: "Shamar Joseph", role: "Bowler", price: "INR 3 Crore", country: "West Indies")
]

let mumbaiIndiansPlayers: [Player] = [
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Rohit Sharma", shortName: "RG Sharma", role: "Batsman", price: "INR 16 Cr(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Suryakumar Yadav", shortName: "SA Yadav", role: "Batsman", price: "INR 8 Cr(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Tilak Varma", shortName: "Tilak Varma", role: "Batsman", price: "INR 1.70 Cr(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Dewald Brevis", shortName: "D Brevis", role: "Batsman", price: "INR 3 crores(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Ishan Kishan (wk)", shortName: "Ishan Kishan", role: "WK-Batsman", price: "INR 15.25 crores(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Kumar Kartikeya Singh", shortName: "K Kartikeya", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Jasprit Bumrah", shortName: "JJ Bumrah", role: "Bowler", price: "INR 12 Crores(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Arjun Tendulkar", shortName: "Arjun Tendulkar", role: "All-rounder", price: "INR 30 Lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Tim David", shortName: "TH David", role: "All-rounder", price: "INR 8.25 Crores(R)", country: "Singapore"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Akash Madhwal", shortName: "Akash Madhwal", role: "Bowler", price: "INR 20 lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Jason Behrendorff", shortName: "JP Behrendorff", role: "Bowler", price: "Traded from RCB", country: "Australia"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Piyush Chawla", shortName: "PP Chawla", role: "Bowler", price: "INR 50 Lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Shams Mulani", shortName: "Shams Mulani", role: "All-rounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Nehal Wadhera", shortName: "N Wadhera", role: "All-rounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Vishnu Vinod", shortName: "Vishnu Vinod", role: "WK-Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Romario Shepherd", shortName: "R Shepherd", role: "All-rounder", price: "Traded from LSG", country: "West Indies"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Hardik Pandya(C)", shortName: "HH Pandya", role: "All-rounder", price: "Traded from GT", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Gerald Coetzee", shortName: "Gerald Coetzee", role: "All-rounder", price: "INR 5 Crores", country: "South Africa"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Dilshan Madushanka", shortName: "Dilshan Madushanka", role: "Bowler", price: "INR 4.60 Crores", country: "Sri Lanka"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Shreyas Gopal", shortName: "S Gopal", role: "Bowler", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Nuwan Thushara", shortName: "N Thushara", role: "Bowler", price: "INR 4.80 Crore", country: "Sri Lanka"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Naman Dhir", shortName: "Naman Dhir", role: "All-rounder", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Anshul Kamboj", shortName: "Anshul Kamboj", role: "All-rounder", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Mohammad Nabi", shortName: "Mohammad Nabi", role: "All-rounder", price: "INR 1.5 Crore", country: "Afghanistan"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Shivalik Sharma", shortName: "Shivalik Sharma", role: "All-rounder", price: "INR 20 Lakhs", country: "India")
]

let punjabKingsPlayers: [Player] = [
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "S Dhawan", shortName: "S Dhawan", role: "Batsman", price: "INR 8.25 Crores(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "P Simran Singh", shortName: "P Simran Singh", role: "WK-Batsman", price: "INR 60 Lakhs(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Jitesh Sharma (wk)", shortName: "Jitesh Sharma", role: "WK-Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Jonny Bairstow", shortName: "JM Bairstow", role: "WK-Batsman", price: "INR 6.75 Crores(R)", country: "England"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Arshdeep Singh", shortName: "Arshdeep Singh", role: "Bowler", price: "INR 4 Cr(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Nathan Ellis", shortName: "NT Ellis", role: "Bowler", price: "INR 75 Lakhs(R)", country: "Australia"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Harpreet Brar", shortName: "Harpreet Brar", role: "Bowler", price: "INR 3.80 Crores(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Rahul Chahar", shortName: "RD Chahar", role: "Bowler", price: "INR 5.25 Crores(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Kagiso Rabada", shortName: "K Rabada", role: "Bowler", price: "INR 9.25 Crores(R)", country: "South Africa"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Liam Livingstone", shortName: "LS Livingstone", role: "All-rounder", price: "INR 11.50 Crores(R)", country: "England"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Rishi Dhawan", shortName: "R Dhawan", role: "All-rounder", price: "INR 55 Lakhs(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Atharva Taide", shortName: "Atharva Taide", role: "All-rounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Sam Curran", shortName: "SM Curran", role: "All-rounder", price: "INR 18.50 crores(R)", country: "England"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Sikandar Raza", shortName: "Sikandar Raza", role: "All-rounder", price: "INR 50 lakh(R)", country: "Zimbabwe"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Harpreet Bhatia", shortName: "Harpreet Bhatia", role: "Batsman", price: "INR 40 lakh(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Vidwath Kaverappa", shortName: "Vidwath Kaverappa", role: "Bowler", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Shivam Singh", shortName: "Shivam Singh", role: "All-rounder", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Harshal Patel", shortName: "HV Patel", role: "All-rounder", price: "INR 11.75 Crore", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Chris Woakes", shortName: "CR Woakes", role: "All-rounder", price: "INR 4.20 Crore", country: "England"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Ashutosh Sharma", shortName: "Ashutosh Sharma", role: "All-rounder", price: "INR 20 Lakh", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Vishwanath Pratap Singh", shortName: "V Pratap Singh", role: "All-rounder", price: "INR 20 Lakh", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Tanay Thayagarajann", shortName: "Tanay Thayagarajann", role: "All-rounder", price: "INR 20 Lakh", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Shashank Singh", shortName: "Shashank Singh", role: "Batsman", price: "INR 20 Lakh", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Prince Choudhary", shortName: "Prince Choudhary", role: "Bowler", price: "INR 20 Lakh", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Rilee Rossouw", shortName: "RR Rossouw", role: "Batsman", price: "INR 8 Crore", country: "South Africa")
]

let rajasthanRoyalsPlayers: [Player] = [
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Yashasvi Jaiswal", shortName: "YBK Jaiswal", role: "Batsman", price: "INR 4 Crores(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Shimron Hetmyer", shortName: "SO Hetmyer", role: "Batsman", price: "INR 8.50 Crores(R)", country: "West Indies"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Sanju Samson (c&wk)", shortName: "SV Samson", role: "WK-Batsman", price: "INR 14 Cr(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Jos Buttler (wk)", shortName: "JC Buttler", role: "WK-Batsman", price: "INR 10 Cr(R)", country: "England"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Dhruv Jurel (wk)", shortName: "Dhruv Jurel", role: "WK-Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Navdeep Saini", shortName: "Navdeep Saini", role: "Bowler", price: "INR 2.60 Crores(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Kuldeep Sen", shortName: "KR Sen", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Yuzvendra Chahal", shortName: "YS Chahal", role: "Bowler", price: "INR 6.50 Crores(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Trent Boult", shortName: "TA Boult", role: "Bowler", price: "INR 8 Crores(R)", country: "New Zealand"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Riyan Parag", shortName: "R Parag", role: "All-rounder", price: "INR 3.80 Crores(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Ravichandran Ashwin", shortName: "R Ashwin", role: "All-rounder", price: "INR 5 Crores(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Donovan Ferreira", shortName: "Donovan Ferreira", role: "WK-Batsman", price: "INR 50 lakh(R)", country: "South Africa"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Kunal Rathore", shortName: "Kunal Rathore", role: "WK-Batsman", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Adam Zampa", shortName: "A Zampa", role: "Bowler", price: "INR 1.5 crore(R)", country: "Australia"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Sandeep Sharma", shortName: "Sandeep Sharma", role: "Bowler", price: "INR 50 lakh(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Avesh Khan", shortName: "Avesh Khan", role: "Bowler", price: "Traded from LSG", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Prashid Krishna", shortName: "M Prasidh Krishna", role: "Bowler", price: "INR 10 Crores(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Rovman Powell", shortName: "R Powell", role: "Batsman", price: "INR 7.40 Crores", country: "West Indies"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Shubham Dubey", shortName: "Shubham Dubey", role: "Batsman", price: "INR 5.80 Cr", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Tom Kohler-Cadmore", shortName: "Tom Kohler-Cadmore", role: "WK-Batsman", price: "INR 40 Lakh", country: "England"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Abid Mushtaq", shortName: "Abid Mushtaq", role: "All-rounder", price: "INR 50 Lakh", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Nandre Burger", shortName: "Nandre Burger", role: "Bowler", price: "INR 50 Lakh", country: "South Africa")
]

let royalChallengersBangalorePlayers: [Player] = [
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Virat Kohli", shortName: "V Kohli", role: "Batsman", price: "INR 15 CR(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Suyash Prabhudessai", shortName: "SS Prabhudessai", role: "Batsman", price: "INR 30 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Faf du Plessis(C)", shortName: "F du Plessis", role: "Batsman", price: "INR 7 crores(R)", country: "South Africa"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Vyshak Vijay Kumar", shortName: "Vijaykumar Vyshak", role: "Bowler", price: "INR 20 Lakh(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Anuj Rawat (wk)", shortName: "Anuj Rawat", role: "WK-Batsman", price: "INR 3.40 crores(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Dinesh Karthik (wk)", shortName: "KD Karthik", role: "WK-Batsman", price: "INR 5.50 crores(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Mohammed Siraj", shortName: "Mohammed Siraj", role: "Bowler", price: "INR 7 CR(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Karn Sharma", shortName: "Karn Sharma", role: "Bowler", price: "INR 50 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Akash Deep", shortName: "Akash Deep", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Glenn Maxwell", shortName: "GJ Maxwell", role: "All-rounder", price: "INR 11 CR(R)", country: "Australia"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Mahipal Lomror", shortName: "MK Lomror", role: "All-rounder", price: "INR 95 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Himanshu Sharma", shortName: "H Sharma", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Manoj Bhandage", shortName: "Manoj Bhandage", role: "Allrounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Rajan Kumar", shortName: "Rajan Kumar", role: "Bowler", price: "INR 70 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Rajat Patidar", shortName: "RM Patidar", role: "Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Will Jacks", shortName: "Will Jacks", role: "Allrounder", price: "INR 3.2 crore(R)", country: "England"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Mayank Dagar", shortName: "Mayank Dagar", role: "Allrounder", price: "Traded from SRH", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Reece Topley", shortName: "RJW Topley", role: "Bowler", price: "INR 1.9 crore(R)", country: "England"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Cameron Green", shortName: "C Green", role: "Allrounder", price: "Traded from MI", country: "Australia"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Alzarri Joseph", shortName: "AS Joseph", role: "Bowler", price: "INR 11.50 Crores", country: "West Indies"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Yash Dayal", shortName: "Yash Dayal", role: "Bowler", price: "INR 5 Crore", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Tom Curran", shortName: "TK Curran", role: "Allrounder", price: "INR 1.5 Crore", country: "England"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Saurav Chauhan", shortName: "Saurav Chauhan", role: "Batsman", price: "INR 20 Lakh", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Lockie Ferguson", shortName: "LH Ferguson", role: "Bowler", price: "INR 2 Crore", country: "New Zealand"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Swapnil Singh", shortName: "Swapnil Singh", role: "Allrounder", price: "INR 20 Lakh", country: "India")
]

let sunrisersHyderabadPlayers: [Player] = [
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Aiden Markram", shortName: "AK Markram", role: "Batsman", price: "INR 2.60 Crores(R)", country: "South Africa"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Rahul Tripathi", shortName: "RA Tripathi", role: "Batsman", price: "INR 8.50 Crores(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Glenn Phillips (wk)", shortName: "GD Phillips", role: "WK-Batsman", price: "INR 1.50 Crores(R)", country: "New Zealand"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Umran Malik", shortName: "Umran Malik", role: "Bowler", price: "INR 4Cr(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Fazal Haq Farooqi", shortName: "Fazalhaq Farooqi", role: "Bowler", price: "INR 50 Lakhs(R)", country: "Afghanistan"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "T Natarajan", shortName: "T Natarajan", role: "Bowler", price: "INR 4 Crores(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Bhuvneshwar Kumar", shortName: "B Kumar", role: "Bowler", price: "INR 4.20 Crores(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Abdul Samad", shortName: "Abdul Samad", role: "All-rounder", price: "INR 4Cr(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Marco Jansen", shortName: "M Jansen", role: "All-rounder", price: "INR 4.20 Crores(R)", country: "South Africa"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Abhishek Sharma", shortName: "Abhishek Sharma", role: "All-rounder", price: "INR 6.50 Crores(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Washington Sundar", shortName: "Washington Sundar", role: "All-rounder", price: "INR 8.75 Crores(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Mayank Agarwal", shortName: "MA Agarwal", role: "Batsman", price: "INR 8.25 crores(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Heinrich Klaasen", shortName: "H Klaasen", role: "WK-Batsman", price: "INR 5.25 crore(R)", country: "South Africa"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Mayank Markande", shortName: "M Markande", role: "Bowler", price: "INR 50 lakh(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Sanvir Singh", shortName: "Sanvir Singh", role: "All-rounder", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Upendra Yadav", shortName: "Upendra Yadav", role: "WK-Batsman", price: "INR 25 lakh(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Shahbaz Ahamad", shortName: "Shahbaz Ahamad", role: "Allrounder", price: "Traded from RCB", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Nitish Kumar Reddy", shortName: "Nithish Kumar Reddy", role: "WK-Batsman", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Anmolpreet Singh", shortName: "Anmolpreet Singh", role: "Batman", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Travis Head", shortName: "TM Head", role: "Batman", price: "INR 6.80 Crores", country: "Australia"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Wanindu Hasaranga", shortName: "Wanindu Hasaranga", role: "Allrounder", price: "INR 1.50 Crores", country: "Sri Lanka"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Pat Cummins(c)", shortName: "PJ Cummins", role: "All-rounder", price: "INR 20.50 Crores", country: "Australia"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Jaydev Unadkat", shortName: "JD Unadkat", role: "Bowler", price: "INR 1.60 Crores", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Akash Singh", shortName: "Akash Singh", role: "Bowler", price: "INR 20 Lakh", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Jhathavedh Subramanyan", shortName: "Jhathavedh Subramanyan", role: "Bowler", price: "INR 20 Lakh", country: "India")
]

// Function to insert Players into Realm
func insertPlayersIntoRealm(players: [Player]) {
    // Get the default Realm
    guard let realm = try? Realm() else {
        fatalError("Failed to access Realm database")
    }
    
    // Write Player data into Realm
    try? realm.write {
        for player in players {
            let realmPlayer = RealmPlayer()
            realmPlayer.id = UUID().uuidString
            realmPlayer.team = player.team
            realmPlayer.franchise = player.franchise
            realmPlayer.name = player.name
            realmPlayer.shortName = player.shortName
            realmPlayer.role = player.role
            realmPlayer.price = player.price
            realmPlayer.country = player.country
            
            // Add the player to Realm
            realm.add(realmPlayer)
        }
    }
}

func fetchPlayersForTeamFromRealm(teamName: String) -> [Player] {
    // Get the default Realm
    guard let realm = try? Realm() else {
        fatalError("Failed to access Realm database")
    }
    
    // Fetch Player objects for the given team from Realm
    let realmPlayers = realm.objects(RealmPlayer.self).filter("team == %@", teamName)
    
    // Map Realm objects to Player objects
    let players = realmPlayers.map { realmPlayer -> Player in
        // Create Player objects using data from Realm
        return Player(team: realmPlayer.team,
                      franchise: realmPlayer.franchise,
                      name: realmPlayer.name,
                      shortName: realmPlayer.shortName,
                      role: realmPlayer.role,
                      price: realmPlayer.price,
                      country: realmPlayer.country)
    }
    
    return Array(players)
}
