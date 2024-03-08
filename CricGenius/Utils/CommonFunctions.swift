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
