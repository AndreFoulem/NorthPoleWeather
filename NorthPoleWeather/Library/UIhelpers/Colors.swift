//
//  Color+.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-04.
//

import SwiftUI

extension Color {
  
  //MARK: Gradients
  static let background = LinearGradient(
    gradient: Gradient(colors: [Color("Background 1"), Color("Background 2")]),
    startPoint: .topLeading,
    endPoint: .bottomTrailing )
  static let backgroundGray = LinearGradient(
    gradient: Gradient(colors: [Color("DarkText"), Color("Forecast Card Background")]),
    startPoint: .topLeading,
    endPoint: .bottomTrailing )
  static let bottomSheetBackground = LinearGradient(gradient: Gradient(colors: [Color("Background 1").opacity(0.60), Color("Background 2").opacity(0.26)]), startPoint: .topLeading, endPoint: .bottomTrailing)
  static let navBarBackground = LinearGradient(gradient: Gradient(colors: [Color("Background 1").opacity(0.1), Color("Background 2").opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
  static let tabBarBackground = LinearGradient(gradient: Gradient(colors: [Color("Tab Bar Background 1").opacity(0.26), Color("Tab Bar Background 2").opacity(0.26)]), startPoint: .top, endPoint: .bottom)
  static let weatherWidgetBackground = LinearGradient(gradient: Gradient(colors: [Color("Weather Widget Background 1"), Color("Weather Widget Background 2")]), startPoint: .leading, endPoint: .trailing)
  static let bottomSheetBorderMiddle = LinearGradient(gradient: Gradient(stops: [.init(color: .white, location: 0), .init(color: .clear, location: 0.2)]), startPoint: .top, endPoint: .bottom)
  static let bottomSheetBorderTop = LinearGradient(gradient: Gradient(colors: [.white.opacity(0), .white.opacity(0.5), .white.opacity(0)]), startPoint: .leading, endPoint: .trailing)
  static let underline = LinearGradient(gradient: Gradient(colors: [.white.opacity(0.1), .white, .white.opacity(0.1)]), startPoint: .leading, endPoint: .trailing)
  
  //MARK: Colors
  static let tabBarBorder = Color("Tab Bar Border").opacity(0.5)
  static let forecastCardBackground = Color("Forecast Card Background").opacity(0.8)
  static let probabilityText = Color("Probability Text")
  static let searchBar = Color("Search Bar")
}
