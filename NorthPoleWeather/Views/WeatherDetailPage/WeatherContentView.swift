//
//  WeatherDetailView.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-06.
//

import SwiftUI

struct WeatherContentView: View {
    @State private var searchText = ""
  
  var searchResults: [Forecast] {
    if searchText.isEmpty {
      return Forecast.cities
    } else {
      return Forecast.cities.filter { $0.location.contains(searchText) }
    }
  }
  
  var body: some View {
    ZStack {
        // MARK: Background Detail
      Color.background
        .ignoresSafeArea()
      
        // MARK: Weather Widgets
      ScrollView(showsIndicators: false) {
        VStack(spacing: 20) {
          ForEach(searchResults) { forecast in
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
      NavBar(searchText: $searchText)
    }
    .navigationBarHidden(true)

    
  }//body
}

struct WeatherDetailView_Previews: PreviewProvider {
  
    static var previews: some View {
      NavigationView {
        WeatherContentView()
          .preferredColorScheme(.dark)
      }
    }
  
}
