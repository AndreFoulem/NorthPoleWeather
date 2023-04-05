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
      .backgroundBlur(radius: 20, opaque: true)
      .background(Color.bottomSheetBackground)
      .clipShape(RoundedRectangle(cornerRadius: 44))
      
      .innerShadow(shape: RoundedRectangle(cornerRadius: 44), color: Color.bottomSheetBorderMiddle, lineWidth: 1, offsetX: 0, offsetY: 1, blur: 20, blendMode: .overlay, opacity: 1)
      
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
          .frame(width: 60, height: 10)
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
