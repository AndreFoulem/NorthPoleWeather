//
//  viewModifiers.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-05.
//

import SwiftUI

extension View {
  func backgroundBlur(radius: CGFloat = 20, opaque: Bool = false) -> some View {
    self
      .background(
        Blur(radius: radius, opaque: opaque) )
  }
}
