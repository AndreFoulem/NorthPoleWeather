//
//  ForecastView.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-05.
//

import SwiftUI

struct ForecastContentView: View {
    var bottomSheetTranslationProrated: CGFloat = 1
    @State private var selection = 0
  
    var body: some View {
      ScrollView {
        VStack {
          // MARK: Segmented Control
          SegmentedControl(selection: $selection)
          
            // MARK: Forecast Cards
            ScrollView(.horizontal, showsIndicators: false) {
              HStack(spacing: 12) {
                  if selection == 0 {
                    ForEach(Forecast.hourly) { forecast in
// i ForecastCard
                      ForecastCard(forecast: forecast, forecastPeriod: .hourly)
                    }
                    .transition(.offset(x: -440))
                  } else {
                    ForEach(Forecast.weekly) { forecast in
                      ForecastCard(forecast: forecast, forecastPeriod: .daily)
                    }
                    .transition(.offset(x: 440))
                  }
              }
              .padding(.vertical, 12)
            }
            .padding(.horizontal, 20)
          
          Text("WIDGETS")
            .font(.custom("TiltWarp-Regular", size: 18))
            .padding(.top, 20)
           // MARK: Forecast Widgets
          Image("Forecast Widgets")
            .opacity(bottomSheetTranslationProrated)
          
        
        }
      }
      .backgroundBlur(radius: 16, opaque: true)
      .background(Color.bottomSheetBackground)
      .clipShape(RoundedRectangle(cornerRadius: 44))
      
      // MARK: // top border inner shadow
      .innerShadow(shape: RoundedRectangle(cornerRadius: 44), color: Color.bottomSheetBorderMiddle, lineWidth: 1, offsetX: 0, offsetY: 1, blur: 0, blendMode: .overlay, opacity: 1)
      
      // MARK: Drag Indicator
      .overlay {
        RoundedRectangle(cornerRadius: 10)
          .fill(.black.opacity(0.3))
          .frame(width: 60, height: 6)
          .frame(height: 30)
          .frame(maxHeight: .infinity, alignment: .top)
         
      }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastContentView()
        .background(Color.background)
        .preferredColorScheme(.dark)
    }
}
