//
//  CommonFunctions.swift
//  CricGenius
//
//  Created by Vivek Singh on 08/03/24.
//

import Foundation
import SwiftUI

struct CommonFunctions {
    static func formattedDate(dateString: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        if let date = dateFormatter.date(from: dateString) {
            dateFormatter.dateFormat = "MMM dd EEEE"
            return dateFormatter.string(from: date)
        } else {
            return "Invalid Date"
        }
    }
}

extension Color {
    init(hex: String) {
        // Remove the '#' character if present
        var cleanedHex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        if cleanedHex.hasPrefix("#") {
            cleanedHex.remove(at: cleanedHex.startIndex)
        }
        
        // Convert hex to UInt32
        var rgb: UInt64 = 0
        Scanner(string: cleanedHex).scanHexInt64(&rgb)
        
        // Extract red, green, and blue components
        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0
        
        // Create Color object
        self.init(red: red, green: green, blue: blue)
    }
    
    func hexString() -> String {
        guard let components = UIColor(self).cgColor.components else {
            return "#000000"
        }
        
        let red = components[0]
        let green = components[1]
        let blue = components[2]
        
        return String(format: "#%02X%02X%02X", Int(red * 255), Int(green * 255), Int(blue * 255))
    }
}
