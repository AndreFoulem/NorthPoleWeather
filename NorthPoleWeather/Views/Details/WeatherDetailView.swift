//
//  WeatherDetailView.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-06.
//

import SwiftUI

struct WeatherDetailView: View {
    var body: some View {
      ZStack {
        // MARK: Background Detail
        Color.background
          .ignoresSafeArea()
      }
      .overlay {
        // MARK: NavBar
        NavBar()
      }
      .navigationBarHidden(true)
    }
}

struct WeatherDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDetailView()
        .preferredColorScheme(.dark)
    }
}
