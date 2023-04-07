//
//  WeatherDetailView.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-06.
//

import SwiftUI

struct WeatherContentView: View {
    @State private var searchText = ""
  
    var body: some View {
      ZStack {
        // MARK: Background Detail
        Color.background
          .ignoresSafeArea()
        
        // MARK: Weather Widgets
        ScrollView(showsIndicators: false) {
          VStack(spacing: 20) {
            ForEach(Forecast.cities) { forecast in
              WeatherWidget(forecast: forecast)
            }
          }
        }
        .safeAreaInset(edge: .top) {
          EmptyView()
            .frame(height: 110)
        }
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
      NavigationView {
        WeatherContentView()
          .preferredColorScheme(.dark)
      }
    }
}
