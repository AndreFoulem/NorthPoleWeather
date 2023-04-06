//
//  NavBar.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-06.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
      VStack(spacing: 8) {
        HStack {
          // MARK: Back Btn
          Button {
            
          } label: {
            HStack(spacing: 5) {
              // MARK: Back Btn -> icon
              Image(systemName: "chevron.left")
                .font(.system(size: 23).weight(.medium))
                .foregroundColor(.secondary)
              
              // MARK: Back Btn -> label
              Text("Weather")
                .font(.title)
                .foregroundColor(.primary)
            }
            .frame(height: 44)
          }//btn
          
          Spacer()
          // MARK: More Btn
          Image(systemName: "ellipsis.circle")
            .font(.system(size: 28))
            .frame(width: 44, height: 44, alignment: .trailing)
        }//hs
        .frame(height: 54)
      }//vs
      .frame(height: 106, alignment: .top)
      .padding(.horizontal, 20)
      .padding(.top, 52)
      .backgroundBlur(radius: 20, opaque: true)
      .background(Color.navBarBackground)
      .frame(maxHeight: .infinity, alignment: .top)
      .ignoresSafeArea()
      
    }//body
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
