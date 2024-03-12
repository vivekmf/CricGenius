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
    @Persisted var role: String = ""
    @Persisted var price: String = ""
    @Persisted var country: String = ""
}

struct Player: Identifiable {
    var id = UUID()
    var team: String
    var franchise: String
    var name: String
    var role: String
    var price: String
    var country: String
}

let chennaiSuperKingsPlayers: [Player] = [
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "MS Dhoni", role: "WK-Batsman", price: "INR 12 Cr(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Ruturaj Gaikwad", role: "Batsman", price: "INR 6 Cr(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Devon Conway", role: "Batsman", price: "INR 1 crores(R)", country: "New Zealand"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Deepak Chahar", role: "Bowler", price: "INR 14 crores(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Tushar Deshpande", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Maheesh Theekshana", role: "Bowler", price: "INR 70 Lakhs(R)", country: "Sri Lanka"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Simranjeet Singh", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Matheesha Pathirana", role: "Bowler", price: "INR 20 Lakhs(R)", country: "Sri Lanka"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Prashant Solanki", role: "Bowler", price: "INR 1.20 crores(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Mitchell Santner", role: "Bowler", price: "INR 1.90 crores(R)", country: "New Zealand"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Rajvardhan Hangargekar", role: "Bowler", price: "INR 1.50 crores(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Ravindra Jadeja", role: "All-rounder", price: "INR 16 Cr(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Moeen Ali", role: "All-rounder", price: "INR 8 Cr(R)", country: "England"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Shivam Dube", role: "All-rounder", price: "INR 4 crores(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Ajinkya Rahane", role: "Batsman", price: "INR 50 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Nishant Sindhu", role: "All-rounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Shaik Rasheed", role: "Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Ajay Mandal", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Mukesh Choudhary", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Rachin Ravindra", role: "All-rounder", price: "INR 1.80 Crores", country: "New Zealand"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Shardul Thakur", role: "All-rounder", price: "INR 4 Crores", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Daryl Mitchell", role: "All-rounder", price: "INR 14 Crore", country: "New Zealand"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Sameer Rizvi", role: "Batsman", price: "INR 8.40 Crore", country: "India"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Mustafizur Rahman", role: "Bowler", price: "INR 2 Crore", country: "Bangladesh"),
    Player(team: "Chennai Super Kings", franchise: "Chennai Super Kings", name: "Avanish Rao Aravelly", role: "WK-Batsman", price: "INR 20 Lakhs", country: "India")
]

let delhiCapitalsPlayers = [
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Rishabh Pant", role: "WT-Batsman", price: "TBA", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Abhishek Porel", role: "WT-Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Prithvi Shaw", role: "Batsman", price: "INR 7.50Cr(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "David Warner", role: "Batsman", price: "INR 6.25 Crores(R)", country: "Australia"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Yash Dhull", role: "Batsman", price: "INR 50 Lakhs(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Anrich Nortje", role: "Bowler", price: "INR 6.50 Cr(R)", country: "South Africa"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Lungi Ngidi", role: "Bowler", price: "INR 50 Lakhs(R)", country: "South Africa"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Khaleel Ahmed", role: "Bowler", price: "INR 5.25 crores(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Praveen Dubey", role: "Bowler", price: "INR 50 Lakhs(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Kuldeep Yadav", role: "Bowler", price: "INR 2 crores(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Axar Patel", role: "All-rounder", price: "INR 9 crores(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Mitchell Marsh", role: "All-rounder", price: "INR 6.50 Crores(R)", country: "Australia"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Lalit Yadav", role: "All-rounder", price: "INR 65 Lakhs(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Vicky Ostwal", role: "All-rounder", price: "INR 20 Lakh(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Ishant Sharma", role: "Bowler", price: "INR 50 lakh(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Mukesh Kumar", role: "Bowler", price: "INR 5.5 crores(R)", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Harry Brook", role: "Batsman", price: "INR 4 Crores", country: "England"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Tristan Stubbs", role: "WT-Batsman", price: "INR 50 Lakh", country: "South Africa"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Ricky Bhui", role: "WT-Batsman", price: "INR 20 Lakh", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Kumar Kushagra", role: "WT-Batsman", price: "INR 7.20 Crore", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Rasikh Dar", role: "Bowler", price: "INR 20 Lakh", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Jhye Richardson", role: "Bowler", price: "INR 5 Crore", country: "Australia"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Sumit Kumar", role: "All-rounder", price: "INR 1 Crore", country: "India"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Shai Hope", role: "WT-Batsman", price: "INR 75 Lakh", country: "West Indies"),
    Player(team: "Delhi Capitals", franchise: "Delhi Capitals", name: "Swastik Chikara", role: "Batsman", price: "INR 20 Lakh", country: "India")
]

let gujaratTitansPlayers = [
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Shubman Gill", role: "Batsman", price: "INR 8 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Sai Sudarshan", role: "Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Abhinav Manohar", role: "Batsman", price: "INR 2.60 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "David Miller", role: "Batsman", price: "INR 3 crores(R)", country: "South Africa"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Kane Williamson", role: "Batsman", price: "INR 2 crores(R)", country: "New Zealand"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Matthew Wade (wk)", role: "WK-Batsman", price: "INR 2.40 Crores(R)", country: "Australia"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Wriddhiman Saha (wk)", role: "WK-Batsman", price: "INR 1.90 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Rashid Khan", role: "Bowler", price: "INR 15 Crores(R)", country: "Afghanistan"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Darshan Nalkande", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "R Sai Kishore", role: "Bowler", price: "INR 3 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Noor Ahmad", role: "Bowler", price: "INR 30 Lakhs(R)", country: "Afghanistan"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Vijay Shankar", role: "All-rounder", price: "INR 1.40 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Jayant Yadav", role: "All-rounder", price: "INR 1.70 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Rahul Tewatia", role: "All-rounder", price: "INR 9 Crores(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Joshua Little", role: "Bowler", price: "INR 4.4 crore(R)", country: "Ireland"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Mohit Sharma", role: "Bowler", price: "INR 50 lakh(R)", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Azmatullah Omarzai", role: "All-rounder", price: "INR 50 lakh", country: "Afghanistan"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Umesh Yadav", role: "Bowler", price: "INR 5.8 Crore", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Shahrukh Khan", role: "All-rounder", price: "INR 7.40 Crore", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Sushant Mishra", role: "Bowler", price: "INR 2.20 Crore", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Kartik Tyagi", role: "Bowler", price: "INR 60 Lakh", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Manav Suthar", role: "Bowler", price: "INR 20 Lakh", country: "India"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Spencer Johnson", role: "Bowler", price: "INR 10 Crore", country: "Australia"),
    Player(team: "Gujarat Titans", franchise: "Gujarat Titans", name: "Robin Minz", role: "WK-Batsman", price: "INR 3.60 Crore", country: "India")
]

let kolkataKnightRidersPlayers = [
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Shreyas Iyer", role: "Batsman", price: "INR 12.25 Crores(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Nitish Rana", role: "Batsman", price: "INR 8 crores(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Rinku Singh", role: "Batsman", price: "INR 55 Lakhs(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Varun Chakravarty", role: "Bowler", price: "INR 8 Cr(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Andre Russell", role: "All-rounder", price: "INR 12 Cr(R)", country: "West Indies"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Venkatesh Iyer", role: "All-rounder", price: "INR 8 Cr(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Sunil Narine", role: "All-rounder", price: "INR 6 Cr(R)", country: "West Indies"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Anukul Roy", role: "All-rounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Rahmanullah Gurbaz", role: "WK-Batsman", price: "INR 50 Lakhs(R)", country: "Afghanistan"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Harshit Rana", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Vaibhav Arora", role: "Bowler", price: "INR 60 lakh(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Suyash Sharma", role: "Bowler", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Jason Roy", role: "Batsman", price: "INR 2.8 crore(R)", country: "England"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "KS Bharat", role: "WK-Batsman", price: "INR 50 Lakhs", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Chetan Sakaria", role: "Bowler", price: "INR 50 Lakhs", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Mitchell Starc", role: "Bowler", price: "INR 24.75 Crore", country: "Australia"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Angkrish Raghuvanshi", role: "Batsman", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Ramandeep Singh", role: "All-rounder", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Sherfane Rutherford", role: "Batsman", price: "INR 1.50 Crore", country: "West Indies"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Manish Pandey", role: "Batsman", price: "INR 50 Lakhs", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Mujeeb Rahman", role: "Bowler", price: "INR 2 Crore", country: "Afghanistan"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Sakib Hussain", role: "Bowler", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Kolkata Knight Riders", franchise: "Kolkata Knight Riders", name: "Dushmantha Chameera", role: "Bowler", price: "INR 50 Lakh", country: "Sri Lanka")
]

let lucknowSuperGiantsPlayers = [
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "KL Rahul", role: "WK-Batsman", price: "INR 17 Crores(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Quinton de Kock (wk)", role: "WK-Batsman", price: "INR 6.75 Crores(R)", country: "South Africa"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Ravi Bishnoi", role: "Bowler", price: "INR 4 Crores(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Mohsin Khan", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Marcus Stoinis", role: "All-rounder", price: "INR 9.2 Crores(R)", country: "Australia"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Kyle Mayers", role: "All-rounder", price: "INR 50 Lakhs(R)", country: "West Indies"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Ayush Badoni", role: "All-rounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Deepak Hooda", role: "All-rounder", price: "INR 5.75 Crores(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Krunal Pandya", role: "All-rounder", price: "INR 8.25 Crores(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Nicholas Pooran", role: "WK-Batsman", price: "INR 16 crore(R)", country: "West Indies"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Yash Thakur", role: "Bowler", price: "INR 45 lakh(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Amit Mishra", role: "Bowler", price: "INR 50 lakh(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Prerak Mankad", role: "All-rounder", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Naveen-ul-Haq", role: "Bowler", price: "INR 50 lakh(R)", country: "Afghanistan"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Yudhvir Singh", role: "All-rounder", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Devdutt Padikkal", role: "Batsman", price: "Traded from RR", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Krishnappa Gowthan", role: "All-rounder", price: "INR 90 lakh(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Mayank Yadav", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Shivam Mavi", role: "Bowler", price: "INR 6.4 Crores", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Arshin Kulkarni", role: "All-rounder", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "M. Siddharth", role: "Bowler", price: "INR 2.40 Crore", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Ashton Turner", role: "Batsman", price: "INR 1 Crore", country: "Australia"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "David Willey", role: "All-rounder", price: "INR 2 Crore", country: "England"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Arshad Khan", role: "All-rounder", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Lucknow Super Giants", franchise: "Lucknow Super Giants", name: "Shamar Joseph", role: "Bowler", price: "INR 3 Crore", country: "West Indies")
]

let mumbaiIndiansPlayers = [
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Rohit Sharma", role: "Batsman", price: "INR 16 Cr(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Suryakumar Yadav", role: "Batsman", price: "INR 8 Cr(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Tilak Varma", role: "Batsman", price: "INR 1.70 Cr(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Dewald Brevis", role: "Batsman", price: "INR 3 crores(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Ishan Kishan (wk)", role: "WK-Batsman", price: "INR 15.25 crores(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Kumar Kartikeya Singh", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Jasprit Bumrah", role: "Bowler", price: "INR 12 Crores(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Arjun Tendulkar", role: "All-rounder", price: "INR 30 Lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Tim David", role: "All-rounder", price: "INR 8.25 Crores(R)", country: "Singapore"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Akash Madhwal", role: "Bowler", price: "INR 20 lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Jason Behrendorff", role: "Bowler", price: "Traded from RCB", country: "Australia"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Piyush Chawla", role: "Bowler", price: "INR 50 Lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Shams Mulani", role: "All-rounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Nehal Wadhera", role: "All-rounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Vishnu Vinod", role: "WK-Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Romario Shepherd", role: "All-rounder", price: "Traded from LSG", country: "West Indies"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Hardik Pandya(C)", role: "All-rounder", price: "Traded from GT", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Gerald Coetzee", role: "All-rounder", price: "INR 5 Crores", country: "South Africa"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Dilshan Madushanka", role: "Bowler", price: "INR 4.60 Crores", country: "Sri Lanka"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Shreyas Gopal", role: "Bowler", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Nuwan Thushara", role: "Bowler", price: "INR 4.80 Crore", country: "Sri Lanka"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Naman Dhir", role: "All-rounder", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Anshul Kamboj", role: "All-rounder", price: "INR 20 Lakhs", country: "India"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Mohammad Nabi", role: "All-rounder", price: "INR 1.5 Crore", country: "Afghanistan"),
    Player(team: "Mumbai Indians", franchise: "Mumbai Indians", name: "Shivalik Sharma", role: "All-rounder", price: "INR 20 Lakhs", country: "India")
]

let punjabKingsPlayers = [
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Shikhar Dhawan(C)", role: "Batsman", price: "INR 8.25 Crores(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Prabhsimran Singh (wk)", role: "WK-Batsman", price: "INR 60 Lakhs(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Jitesh Sharma (wk)", role: "WK-Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Jonny Bairstow", role: "WK-Batsman", price: "INR 6.75 Crores(R)", country: "England"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Arshdeep Singh", role: "Bowler", price: "INR 4 Cr(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Nathan Ellis", role: "Bowler", price: "INR 75 Lakhs(R)", country: "Australia"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Harpreet Brar", role: "Bowler", price: "INR 3.80 Crores(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Rahul Chahar", role: "Bowler", price: "INR 5.25 Crores(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Kagiso Rabada", role: "Bowler", price: "INR 9.25 Crores(R)", country: "South Africa"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Liam Livingstone", role: "All-rounder", price: "INR 11.50 Crores(R)", country: "England"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Rishi Dhawan", role: "All-rounder", price: "INR 55 Lakhs(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Atharva Taide", role: "All-rounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Sam Curran", role: "All-rounder", price: "INR 18.50 crores(R)", country: "England"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Sikandar Raza", role: "All-rounder", price: "INR 50 lakh(R)", country: "Zimbabwe"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Harpreet Bhatia", role: "Batsman", price: "INR 40 lakh(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Vidwath Kaverappa", role: "Bowler", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Shivam Singh", role: "All-rounder", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Harshal Patel", role: "All-rounder", price: "INR 11.75 Crore", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Chris Woakes", role: "All-rounder", price: "INR 4.20 Crore", country: "England"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Ashutosh Sharma", role: "All-rounder", price: "INR 20 Lakh", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Vishwanath Pratap Singh", role: "All-rounder", price: "INR 20 Lakh", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Tanay Thayagarajann", role: "All-rounder", price: "INR 20 Lakh", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Shashank Singh", role: "Batsman", price: "INR 20 Lakh", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Prince Choudhary", role: "Bowler", price: "INR 20 Lakh", country: "India"),
    Player(team: "Punjab Kings", franchise: "Punjab Kings", name: "Rilee Rossouw", role: "Batsman", price: "INR 8 Crore", country: "South Africa")
]

let rajasthanRoyalsPlayers = [
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Yashasvi Jaiswal", role: "Batsman", price: "INR 4 Crores(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Shimron Hetmyer", role: "Batsman", price: "INR 8.50 Crores(R)", country: "West Indies"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Sanju Samson (c&wk)", role: "WK-Batsman", price: "INR 14 Cr(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Jos Buttler (wk)", role: "WK-Batsman", price: "INR 10 Cr(R)", country: "England"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Dhruv Jurel (wk)", role: "WK-Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Navdeep Saini", role: "Bowler", price: "INR 2.60 Crores(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Kuldeep Sen", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Yuzvendra Chahal", role: "Bowler", price: "INR 6.50 Crores(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Trent Boult", role: "Bowler", price: "INR 8 Crores(R)", country: "New Zealand"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Riyan Parag", role: "All-rounder", price: "INR 3.80 Crores(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Ravichandran Ashwin", role: "All-rounder", price: "INR 5 Crores(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Donovan Ferreira", role: "WK-Batsman", price: "INR 50 lakh(R)", country: "South Africa"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Kunal Rathore", role: "WK-Batsman", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Adam Zampa", role: "Bowler", price: "INR 1.5 crore(R)", country: "Australia"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Sandeep Sharma", role: "Bowler", price: "INR 50 lakh(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Avesh Khan", role: "Bowler", price: "Traded from LSG", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Prashid Krishna", role: "Bowler", price: "INR 10 Crores(R)", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Rovman Powell", role: "Batsman", price: "INR 7.40 Crores", country: "West Indies"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Shubham Dubey", role: "Batsman", price: "INR 5.80 Cr", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Tom Kohler-Cadmore", role: "WK-Batsman", price: "INR 40 Lakh", country: "England"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Abid Mushtaq", role: "All-rounder", price: "INR 50 Lakh", country: "India"),
    Player(team: "Rajasthan Royals", franchise: "Rajasthan Royals", name: "Nandre Burger", role: "Bowler", price: "INR 50 Lakh", country: "South Africa")
]

let royalChallengersBangalorePlayers = [
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Virat Kohli", role: "Batsman", price: "INR 15 CR(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Suyash Prabhudessai", role: "Batsman", price: "INR 30 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Faf du Plessis(C)", role: "Batsman", price: "INR 7 crores(R)", country: "South Africa"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Vyshak Vijay Kumar", role: "Bowler", price: "INR 20 Lakh(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Anuj Rawat (wk)", role: "WK-Batsman", price: "INR 3.40 crores(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Dinesh Karthik (wk)", role: "WK-Batsman", price: "INR 5.50 crores(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Mohammed Siraj", role: "Bowler", price: "INR 7 CR(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Karn Sharma", role: "Bowler", price: "INR 50 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Akash Deep", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Glenn Maxwell", role: "All-rounder", price: "INR 11 CR(R)", country: "Australia"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Mahipal Lomror", role: "All-rounder", price: "INR 95 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Himanshu Sharma", role: "Bowler", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Manoj Bhandage", role: "Allrounder", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Rajan Kumar", role: "Bowler", price: "INR 70 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Rajat Patidar", role: "Batsman", price: "INR 20 Lakhs(R)", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Will Jacks", role: "Allrounder", price: "INR 3.2 crore(R)", country: "England"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Mayank Dagar", role: "Allrounder", price: "Traded from SRH", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Reece Topley", role: "Bowler", price: "INR 1.9 crore(R)", country: "England"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Cameron Green", role: "Allrounder", price: "Traded from MI", country: "Australia"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Alzarri Joseph", role: "Bowler", price: "INR 11.50 Crores", country: "West Indies"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Yash Dayal", role: "Bowler", price: "INR 5 Crore", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Tom Curran", role: "Allrounder", price: "INR 1.5 Crore", country: "England"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Saurav Chauhan", role: "Batsman", price: "INR 20 Lakh", country: "India"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Lockie Ferguson", role: "Bowler", price: "INR 2 Crore", country: "New Zealand"),
    Player(team: "Royal Challengers Bangalore", franchise: "Royal Challengers Bangalore", name: "Swapnil Singh", role: "Allrounder", price: "INR 20 Lakh", country: "India")
]

let sunrisersHyderabadPlayers = [
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Aiden Markram", role: "Batsman", price: "INR 2.60 Crores(R)", country: "South Africa"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Rahul Tripathi", role: "Batsman", price: "INR 8.50 Crores(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Glenn Phillips (wk)", role: "WK-Batsman", price: "INR 1.50 Crores(R)", country: "New Zealand"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Umran Malik", role: "Bowler", price: "INR 4Cr(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Fazal Haq Farooqi", role: "Bowler", price: "INR 50 Lakhs(R)", country: "Afghanistan"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "T Natarajan", role: "Bowler", price: "INR 4 Crores(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Bhuvneshwar Kumar", role: "Bowler", price: "INR 4.20 Crores(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Abdul Samad", role: "All-rounder", price: "INR 4Cr(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Marco Jansen", role: "All-rounder", price: "INR 4.20 Crores(R)", country: "South Africa"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Abhishek Sharma", role: "All-rounder", price: "INR 6.50 Crores(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Washington Sundar", role: "All-rounder", price: "INR 8.75 Crores(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Mayank Agarwal", role: "Batsman", price: "INR 8.25 crores(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Heinrich Klaasen", role: "WK-Batsman", price: "INR 5.25 crore(R)", country: "South Africa"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Mayank Markande", role: "Bowler", price: "INR 50 lakh(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Sanvir Singh", role: "All-rounder", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Upendra Yadav", role: "WK-Batsman", price: "INR 25 lakh(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Shahbaz Ahamad", role: "Allrounder", price: "Traded from RCB", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Nitish Kumar Reddy", role: "WK-Batsman", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Anmolpreet Singh", role: "Batman", price: "INR 20 lakh(R)", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Travis Head", role: "Batman", price: "INR 6.80 Crores", country: "Australia"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Wanindu Hasaranga", role: "Allrounder", price: "INR 1.50 Crores", country: "Sri Lanka"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Pat Cummins(c)", role: "All-rounder", price: "INR 20.50 Crores", country: "Australia"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Jaydev Unadkat", role: "Bowler", price: "INR 1.60 Crores", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Akash Singh", role: "Bowler", price: "INR 20 Lakh", country: "India"),
    Player(team: "Sunrisers Hyderabad", franchise: "Sunrisers Hyderabad", name: "Jhathavedh Subramanyan", role: "Bowler", price: "INR 20 Lakh", country: "India")
]
