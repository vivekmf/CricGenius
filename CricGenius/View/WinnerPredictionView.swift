//
//  WinnerPredictionView.swift
//  CricGenius
//
//  Created by Vivek Singh on 27/02/24.
//

import Foundation
import SwiftUI
import CoreML

func winnerPredict() -> Ipl2023MatchesModelOutput? {
    do {
        let config = MLModelConfiguration()
        
        let winnerModel = try Ipl2023MatchesModel(configuration: config)
        
        let winnerPrediction = try winnerModel.prediction(city: "Ahmedabad", team1: "Chennai Super Kings", team2: "Gujarat Titans", toss_winner: "Gujarat Titans", day_night: "Night", toss_decision: "field", country: "India")
        
        return winnerPrediction
    } catch{
        
    }
    return nil
}

func winnerPredictTest(team1: String, team2: String, tossWinner: String, dayNight: String, tossDecision: String ,venue: String, country: String) -> Ipl2023MatchesTestOutput? {
    do {
        let config = MLModelConfiguration()
        
        let winnerModel = try Ipl2023MatchesTest(configuration: config)
        
        let winnerPrediction = try winnerModel.prediction(city: "Ahmedabad", team1: team1, team2: team2, toss_winner: tossWinner, day_night: dayNight, toss_decision: tossDecision, venue: venue, country: country)
        
        return winnerPrediction
    } catch{
        
    }
    return nil
}

func iplWinnerPredictOld() -> Ipl20082023MatchDataOutput? {
    do {
        let config = MLModelConfiguration()
        
        let winnerModel = try Ipl20082023MatchData(configuration: config)
        
        let winnerPrediction = try winnerModel.prediction(city: "Dubai", venue: "Dubai International Cricket Stadium", team1: "Delhi Capitals", team2: "Mumbai Indians", toss_winner: "Delhi Capitals", toss_decision: "bat")
        return winnerPrediction
    } catch {
        return nil
    }
}

func iplWinnerFinalPredict() -> Ipl2020FinalPredictOutput? {
    do {
        let config = MLModelConfiguration()
        
        let winnerModel = try Ipl2020FinalPredict(configuration: config)
        
        let winnerPrediction = try winnerModel.prediction(city: "Dubai", venue: "Dubai International Cricket Stadium", team1: "Delhi Capitals", team2: "Mumbai Indians", toss_winner: "Delhi Capitals", toss_decision: "bat")
        return winnerPrediction
    } catch {
        return nil
    }
}

struct WinnerPredictionView: View {
    let team1: String
    let team2: String
    let tossWinner: String
    let dayNight: String
    let tossDecision: String
    let venue: String
    let country: String
    
    var body: some View {
        let winnerPredictClass = winnerPredictTest(team1: team1, team2: team2, tossWinner: tossWinner, dayNight: dayNight, tossDecision: tossDecision, venue: venue, country: country)?.winner
        let winnerProbabilityClass = winnerPredictTest(team1: team1, team2: team2, tossWinner: tossWinner, dayNight: dayNight, tossDecision: tossDecision, venue: venue, country: country)?.winnerProbability
        
        return VStack {
            Text("Winner of IPL 2023")
                .font(.title)
                .padding()
            ForEach(winnerProbabilityClass?.sorted(by: { $0.value > $1.value }) ?? [], id: \.key) { team, probability in
                Text("\(team): \(probability)")
                    .font(.title2)
            }
            
            Text("Predicted Winner:")
                .font(.title)
                .padding()
            Text("\(winnerPredictClass ?? "")")
                .font(.title)
                .padding(.top, -20)
        }
    }
}

