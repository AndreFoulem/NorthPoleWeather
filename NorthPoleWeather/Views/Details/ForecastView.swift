//
//  ForecastView.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-05.
//

import SwiftUI

struct ForecastView: View {
    var body: some View {
      ScrollView {
        
      }
      .background(Color.bottomSheetBackground)
      .background(Blur(radius: 25, opaque: true))
      .clipShape(RoundedRectangle(cornerRadius: 44))
      .overlay {
        // MARK: Bottom Sheet Separator
        Divider()
          .blendMode(.overlay)
          .background(Color.bottomSheetBorderTop)
          .frame(maxHeight: .infinity, alignment: .top)
          .clipShape(RoundedRectangle(cornerRadius: 44))
      }
        // MARK: Drag Indicator
      .overlay {
        RoundedRectangle(cornerRadius: 10)
          .fill(.black.opacity(0.3))
          .frame(width: 48, height: 5)
          .frame(height: 20)
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
