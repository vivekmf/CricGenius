//
//  TopStoriesView.swift
//  CricGenius
//
//  Created by Vivek Singh on 23/02/24.
//

import Foundation
import SwiftUI

struct TopStories: Identifiable {
    var id = UUID()
    var storyImage: String
    var storyText: String
}

struct TopStoriesView: View {
    var storyImage: String
    var storyText: String
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Image(storyImage)
                    .resizable()
                    .frame(width: 165, height: 120)
                    .cornerRadius(14)
                
                LinearGradient(
                    gradient: Gradient(colors: [Color.black.opacity(1.1), Color.clear]),
                    startPoint: .bottom,
                    endPoint: .top
                )
                .frame(width: 165, height: 120)
                .cornerRadius(14)
                
                Text(storyText)
                    .font(.system(size: 12))
                    .bold()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(width: 160, height: 120, alignment: .center)
                    .offset(y: 38)
            }
        }
    }
}

#Preview{
    CricGeniusHomeView()
}
