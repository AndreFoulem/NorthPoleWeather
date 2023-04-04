//
//  HomeView.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-04.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
      ZStack {
        //MARK: Background Color
        Color.background
          .ignoresSafeArea()
        
        //MARK: Background Img
        Image("Background")
          .resizable()
          .ignoresSafeArea()
        
        //MARK: House Img
        Image("House")
          .frame(maxHeight: .infinity, alignment: .top)
          .padding(.top, 257)
        
        VStack {
          Text("Montreal")
            .font(.largeTitle)
          VStack {
            Text("19°" + "\n" + "Mostly Clear")
            Text("H:24°  L:18°")
              .font(.title3.weight(.semibold))
          }
          Spacer()
        }//vs
        .padding(.top, 51)
        
      }//zstack
      
    }//body
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        .preferredColorScheme(.dark)
    }
}
