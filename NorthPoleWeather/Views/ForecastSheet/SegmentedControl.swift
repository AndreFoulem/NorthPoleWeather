//
//  SegmentedControl.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-06.
//

import SwiftUI

struct SegmentedControl: View {
  @Binding var selection: Int
    var body: some View {
      VStack(spacing: 5) {
        //MARK: Segmented Button
        HStack {
          Button {
            withAnimation() {
              selection = 0
            }
          } label: {
            Text("Hourly Forecast")
        
          }
          .frame(maxWidth: .infinity)
          
          Button {
            withAnimation() {
              selection = 1
            }
          } label: {
            Text("Weekly Forecast")
            
          }
          .frame(maxWidth: .infinity)
        }//hs
        .font(.subheadline.weight(.semibold))
        .foregroundColor(Color("DarkText"))
        .padding(.bottom, 6)
        .padding(.top, 4)
        
        // MARK: Separator
        Divider()
          .background(.white.opacity(0.9))
          .blendMode(.overlay)
          .shadow(color: .black.opacity(0.2), radius: 0, x: 0, y: 1)
          .blendMode(.overlay)
          .overlay {
            // MARK: Underline
            HStack {
              Divider()
              .frame(width: UIScreen.main.bounds.width / 2, height: 5)
              .background(Color.underline)
            .blendMode(.overlay)
            }
            .frame(maxWidth: .infinity, alignment: selection == 0 ? .leading : .trailing)
          }
       
      }
      .padding(.top, 25)
    }
}

struct SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
      SegmentedControl(selection: .constant(0))
    }
}
