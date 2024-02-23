////
////  BottomNavigationView.swift
////  CricGenius
////
////  Created by Vivek Singh on 23/02/24.
////
//
import Foundation
import SwiftUI

struct BottomNavigationMenuItem: Identifiable, Equatable {
    let id = UUID()
    let imageName: String
    let itemName: String
    var isSelected: Bool = false
}

struct BottomNavigationView: View {
    @Binding var bottomMenuItems: [BottomNavigationMenuItem]

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 20) {
                ForEach(bottomMenuItems.indices, id: \.self) { index in
                    Button(action: {
                        // Update the isSelected state
                        bottomMenuItems.indices.forEach { i in
                            bottomMenuItems[i].isSelected = (i == index)
                        }
                    }) {
                        HStack {
                            Image(systemName: bottomMenuItems[index].imageName)
                                .resizable()
                                .frame(width: 22, height: 20)
                                .foregroundStyle(bottomMenuItems[index].isSelected ? Color.black : Color.gray)
                            if bottomMenuItems[index].isSelected {
                                Text(bottomMenuItems[index].itemName)
                                    .font(.system(size: 14))
                                    .bold()
                                    .padding(.leading, -5)
                                    .foregroundStyle(Color.black)
                            }
                        }
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 8)
                    .background(bottomMenuItems[index].isSelected ? Color(red: 0.48, green: 0.82, blue: 0.91) : Color.clear)
                    .cornerRadius(35)
                }
            }
        }
        .padding(10)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(28)
        .padding(.horizontal, 20)
    }
}
