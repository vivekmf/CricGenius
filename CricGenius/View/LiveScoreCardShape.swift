//
//  CustomShape.swift
//  CricGenius
//
//  Created by Vivek Singh on 22/02/24.
//

import Foundation
import SwiftUI

struct LiveScoreCardShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let cornerRadius: CGFloat = 20
        
        // Top-right corner
        path.addArc(center: CGPoint(x: rect.maxX - cornerRadius, y: rect.minY + 45 + cornerRadius),
                    radius: cornerRadius,
                    startAngle: Angle(degrees: -90),
                    endAngle: Angle(degrees: 0),
                    clockwise: false)
        
        // Right-bottom corner
        path.addArc(center: CGPoint(x: rect.maxX - cornerRadius, y: rect.maxY - cornerRadius),
                    radius: cornerRadius,
                    startAngle: Angle(degrees: 0),
                    endAngle: Angle(degrees: 90),
                    clockwise: false)
        
        // Left-bottom corner
        path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.maxY  - cornerRadius),
                    radius: cornerRadius,
                    startAngle: Angle(degrees: 90),
                    endAngle: Angle(degrees: 180),
                    clockwise: false)
        
        // Top-left corner
        path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.minY + cornerRadius),
                    radius: cornerRadius,
                    startAngle: Angle(degrees: 180),
                    endAngle: Angle(degrees: 270),
                    clockwise: false)
        
        path.addArc(center: CGPoint(x: rect.minX + 188 + cornerRadius, y: rect.minY - cornerRadius),
                    radius: cornerRadius,
                    startAngle: Angle(degrees: 92),
                    endAngle: Angle(degrees: 98),
                    clockwise: false)
        
        // Updated slower and smoother curve to the left
        let controlPoint1 = CGPoint(x: rect.minX + 225, y: rect.minY + 8)
        let controlPoint2 = CGPoint(x: rect.minX + 185, y: rect.minY + 55)
        path.addCurve(to: CGPoint(x: rect.minX + 270, y: rect.minY + 42),
                      control1: controlPoint1,
                      control2: controlPoint2)
        return path
    }
}

#Preview {
    CricGeniusHomeView()
}
