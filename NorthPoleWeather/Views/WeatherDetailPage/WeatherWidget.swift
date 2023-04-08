//
//  WeatherDetailWidget.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-06.
//

import SwiftUI

struct WeatherWidget: View {
   var forecast: Forecast
  
    var body: some View {
      ZStack(alignment: .bottom) {
        // MARK: Trapezoid Shape
        WeatherBadge()
          .fill(Color.weatherWidgetBackground)
          .frame(width: 342, height: 174)

        // MARK: Weather Content
        HStack(alignment:.bottom) {
          VStack(alignment: .leading, spacing: 8) {
              // MARK: Forecast Temp
              Text("\(forecast.temperature)°")
              .font(.custom("TiltWarp-Regular", size: 54))
      
              // MARK: Forecast Temp Range
              Text("H:\(forecast.high)° L:\(forecast.low)°")
              .font(.custom("TiltWarp-Regular", size: 18))
                .foregroundColor(.secondary)
              
              //MARK: Forecast Location
              Text(forecast.location)
              .font(.custom("TiltWarp-Regular", size: 18))
                .lineLimit(1)
                .padding(.top, -10)
          }//vs
         
          Spacer()
          
          VStack(alignment: .trailing, spacing: 0) {
            Image("\(forecast.icon) large")
              .padding(.trailing, 4)
            
            
            //MARK: Weather percentage
            Text(forecast.weather.rawValue)
              .font(.custom("TiltWarp-Regular", size: 16))
              .padding(.trailing, 24)
          }//vs
        }//hs
        .padding(.bottom, 18)
        .padding(.leading, 18)
        .foregroundColor(.white)
        
      }//zs
      .frame(width: 342, height: 184, alignment: .bottom)
      
    }//body
}

struct WeatherDetailWidget_Previews: PreviewProvider {
    static var previews: some View {
      WeatherWidget(forecast: Forecast.cities[0])
        .preferredColorScheme(.dark)
    }
}
