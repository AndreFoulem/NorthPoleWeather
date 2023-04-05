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
    path.move(to: CGPoint(x: rect.minX, y: rect.minY))
    
    //! to Last Point + Control Point
    path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.minY), control: CGPoint(x: rect.midX, y: rect.midY))
    
    return path
  }
}


