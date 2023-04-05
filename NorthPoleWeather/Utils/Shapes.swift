//
//  Shapes.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-05.
//

import SwiftUI

struct Arc: Shape {
  func path(in rect: CGRect) -> Path {
    var path = Path()
    
    //! First Point
    path.move(to: CGPoint(x: rect.minX - 1, y: rect.minY))
    
    //! to Last Point + Control Point
    path.addQuadCurve(to: CGPoint(x: rect.maxX + 1, y: rect.minY), control: CGPoint(x: rect.midX, y: rect.midY))
    
    //! Draw line to bottom trailing
    path.addLine(to: CGPoint(x: rect.maxX + 1, y: rect.maxY + 1))
    //! Draw the line to bottom leading
    path.addLine(to: CGPoint(x: rect.minX - 1, y: rect.maxY + 1))
    //! Close the subPath
    path.closeSubpath()
    
    return path
  }
}

//** we add or substract to rect.* to hide the straight stroke lines by drawing outside the rect: CGRect


