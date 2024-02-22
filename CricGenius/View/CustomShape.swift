//
//  CustomShape.swift
//  CricGenius
//
//  Created by Vivek Singh on 22/02/24.
//

import Foundation
import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let width = rect.size.width
        let height = rect.size.height
        let cornerRadius: CGFloat = 35
        
        // Starting from top-left corner
        path.move(to: CGPoint(x: 0, y: cornerRadius))
        path.addArc(center: CGPoint(x: cornerRadius, y: cornerRadius), radius: cornerRadius,
                    startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
        
        // Line to top-right corner
        path.addLine(to: CGPoint(x: width - cornerRadius, y: 0))
        
        // Top-right corner
        path.addArc(center: CGPoint(x: width - cornerRadius, y: cornerRadius), radius: cornerRadius,
                    startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: true)
        
        // Line to bottom-right corner
        path.addLine(to: CGPoint(x: width, y: height - cornerRadius))
        
        // Bottom-right corner
        path.addArc(center: CGPoint(x: width - cornerRadius, y: height - cornerRadius), radius: cornerRadius,
                    startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
        
        // Line to bottom-left corner
        path.addLine(to: CGPoint(x: cornerRadius, y: height))
        
        // Bottom-left corner
        path.addArc(center: CGPoint(x: cornerRadius, y: height - cornerRadius), radius: cornerRadius,
                    startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
        
        // Line back to starting point
        path.addLine(to: CGPoint(x: 0, y: cornerRadius))

        return path
    }
}

#Preview {
    CricGeniusHomeView()
}
