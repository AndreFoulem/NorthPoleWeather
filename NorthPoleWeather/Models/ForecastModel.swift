//
//  ForecastModel.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-06.
//

import Foundation

enum ForecastPeriod {
  case hourly
  case daily
}

enum Weather: String {
  case clear = "Clear"
  case cloudy = "Cloudy"
  case rainy = "Mid Rain"
  case stormy = "Showers"
  case sunny = "Sunny"
  case windy = "Fast Wind"
}

struct Forecast: Identifiable {
  var id = UUID()
  var date: Date
  var weather: Weather
  var probability: Int
  var temperature: Int
  var high: Int
  var low: Int
  var location: String
  
  var icon: String {
    switch weather {
      case .clear:
        return "Moon"
      case .cloudy:
        return "Cloud"
      case .rainy:
        return "Moon cloud mid rain"
      case .stormy:
        return "Sun cloud angled rain"
      case .sunny:
        return "Sun"
      case .windy:
        return "Moon cloud fast wind"
    }
  }
}

extension Forecast {
  static let hour: TimeInterval = 60 * 60
  static let day: TimeInterval = 60 * 60 * 24
  
  static let hourly: [Forecast] = [
    Forecast(date: .init(timeIntervalSinceNow: hour * -1), weather: .stormy, probability: 0, temperature: -24, high: -27, low: -18, location: "Montreal, Canada"),
    Forecast(date: .now, weather: .stormy, probability: 0, temperature: 19, high: 24, low: 18, location: "Montreal, Canada"),
    Forecast(date: .init(timeIntervalSinceNow: hour * 1), weather: .windy, probability: 0, temperature: -25, high: -20, low: -32, location: "Montreal, Canada"),
    Forecast(date: .init(timeIntervalSinceNow: hour * 2), weather: .windy, probability: 0, temperature: -18, high: -16, low: -22, location: "Montreal, Canada"),
    Forecast(date: .init(timeIntervalSinceNow: hour * 3), weather: .windy, probability: 0, temperature: -13, high: -10, low: -20, location: "Montreal, Canada"),
    Forecast(date: .init(timeIntervalSinceNow: hour * 4), weather: .windy, probability: 0, temperature: -19, high: -14, low: -27, location: "Montreal, Canada")
  ]
  
  static let weekly: [Forecast] = [
    Forecast(date: .init(timeIntervalSinceNow: 0), weather: .rainy, probability: 30, temperature: -5, high: 0, low: -12, location: "Montreal, Canada"),
    Forecast(date: .init(timeIntervalSinceNow: day * 1), weather: .windy, probability: 20, temperature: -15, high: -12, low: -22, location: "Montreal, Canada"),
    Forecast(date: .init(timeIntervalSinceNow: day * 2), weather: .stormy, probability: 0, temperature: -22, high: -25, low: -29, location: "Montreal, Canada"),
    Forecast(date: .init(timeIntervalSinceNow: day * 3), weather: .stormy, probability: 0, temperature: -10, high: -7, low: -18, location: "Montreal, Canada"),
    Forecast(date: .init(timeIntervalSinceNow: day * 4), weather: .windy, probability: 0, temperature: -16, high: -12, low: -22, location: "Montreal, Canada"),
    Forecast(date: .init(timeIntervalSinceNow: day * 5), weather: .windy, probability: 0, temperature: -12, high: -10, low: -14, location: "Montreal, Canada")
  ]
  
  static let cities: [Forecast] = [
    Forecast(date: .now, weather: .rainy, probability: 10, temperature: 19, high: 24, low: 18, location: "Christmas Tree"),
    Forecast(date: .now, weather: .windy, probability: 0, temperature: 20, high: 21, low: 19, location: "North Pole"),
    Forecast(date: .now, weather: .stormy, probability: 0, temperature: 13, high: 16, low: 8, location: "Santa's House"),
    Forecast(date: .now, weather: .windy, probability: 0, temperature: 23, high: 26, low: 16, location: "Toy Factory")
  ]
}

