//
//  ForecastView.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-05.
//

import SwiftUI

struct ForecastView: View {
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
              ForEach(Forecast.hourly) { forecast in
                ForecastCard(forecast: forecast, forecastPeriod: .hourly)
              }
            }
            .padding(.vertical, 12)
          }
          .padding(.horizontal, 20)
        }
      }
      .backgroundBlur(radius: 16, opaque: true)
      .background(Color.bottomSheetBackground)
      .clipShape(RoundedRectangle(cornerRadius: 44))
      
      // MARK: // top border inner shadow
      .innerShadow(shape: RoundedRectangle(cornerRadius: 44), color: Color.bottomSheetBorderMiddle, lineWidth: 1, offsetX: 0, offsetY: 1, blur: 0, blendMode: .overlay, opacity: 1)
      
//      .overlay {
//        // MARK: Bottom Sheet Separator
//        Divider()
//          .blendMode(.overlay)
//          .background(Color.bottomSheetBorderTop)
//          .frame(maxHeight: .infinity, alignment: .top)
//          .clipShape(RoundedRectangle(cornerRadius: 44))
//      }
      
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
        ForecastView()
        .background(Color.background)
        .preferredColorScheme(.dark)
    }
}
