//
//  NPTabBar.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-05.
//

import SwiftUI

struct NPTabBar: View {
    var action: () -> Void
  
  var body: some View {

      ZStack {
        // MARK: Arc Shape
        Arc()
          .fill(Color.tabBarBackground)
          .frame(height: 88)
          .overlay {
            Arc()
              .stroke(Color.tabBarBorder, lineWidth: 0.5)
          }
        
        HStack {
            // MARK: Expand Button
          Button {
            action()
          } label: {
            Image(systemName: "mappin.and.ellipse")
              .font(.title)
              .frame(width: 44, height: 44)
            
          }
          Spacer()
            // MARK: Nav Button
          NavigationLink {
            WeatherContentView()
          } label: {
            Image(systemName: "list.star")
              .font(.title)
              .frame(width: 44, height: 44)
          }
        }//hs
        .font(.title2)
        .foregroundColor(.white)
        .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
        .backgroundBlur(radius: 40)
    
   
      }
      .frame(maxHeight: .infinity, alignment: .bottom)
      .ignoresSafeArea()
    }
  
}

struct NPTabBar_Previews: PreviewProvider {
    static var previews: some View {
      NPTabBar(action: {})
        .preferredColorScheme(.dark)
    }
}
