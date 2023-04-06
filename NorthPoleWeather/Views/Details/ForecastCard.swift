//
//  ForecastCard.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-06.
//

import SwiftUI

struct ForecastCard: View {
  var forecast: Forecast
  var forecastPeriod: ForecastPeriod
  var isActive: Bool = true
  
    var body: some View {
      ZStack {
        // MARK: Card
        RoundedRectangle(cornerRadius: 30)
          .fill(Color.forecastCardBackground.opacity(isActive ? 1 : 0.2))
          .frame(width: 60, height: 146)
          .shadow(color: .black.opacity(0.25), radius: 10, x: 5, y: 4)
          .overlay {
            // MARK: Card Border
            RoundedRectangle(cornerRadius: 30)
              .strokeBorder(.white.opacity(isActive ? 0.8 : 0.2))
              .blendMode(.overlay)
          }
          .innerShadow(shape: RoundedRectangle(cornerRadius: 30), color: .white.opacity(0.25), lineWidth: 1, offsetX: 0, offsetY: 1, blur: 0, blendMode: .overlay)
        
        
        
        
      }
    }
}

struct ForecastCard_Previews: PreviewProvider {
    static var previews: some View {
      ForecastCard(forecast: Forecast.hourly[0], forecastPeriod: .hourly)
    }
}
