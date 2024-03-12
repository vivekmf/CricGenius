//
//  PredictionView.swift
//  CricGenius
//
//  Created by Vivek Singh on 11/03/24.
//

import Foundation
import SwiftUI
import CoreML

struct PredictionView: View {
    var body: some View {
        VStack {
            Text("IPL 2024 Final Winner Prediction:")
                .bold()
            let winner = predictWinner()?.Winner
            Text(winner ?? "")
                .bold()
        }
        .padding()
    }
}

func predictWinner() -> IPLTeamWinnerPredictOutput?{
    do{
        let predictionConfig = MLModelConfiguration()
        let predictionModel = try IPLTeamWinnerPredict(configuration: predictionConfig)
        let predictionData = try predictionModel.prediction(City: "Chennai", Date: "2024-03-22", Match_Type: "T20", Teams: "Chennai Super Kings, Royal Challengers Bangalore", Venue: "MA Chidambaram Stadium", Overs: 20)
        return predictionData
    }catch{
        return nil
    }
}
