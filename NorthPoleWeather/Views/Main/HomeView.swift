//
//  HomeView.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-04.
//

import SwiftUI
import BottomSheet

struct HomeView: View {
    @State var bottomSheetPosition: BottomSheetPosition = .middle
    @State var bottomSheetTranslation: CGFloat = BottomSheetPosition.middle.rawValue
  
  var bottomSheetTranslationProrated: CGFloat {
    (bottomSheetTranslation - BottomSheetPosition.middle.rawValue) /
    (BottomSheetPosition.top.rawValue - BottomSheetPosition.middle.rawValue)
  }
  
    var body: some View {
      NavigationView {
        
        GeometryReader { geometry in
          let screenHeight = geometry.size.height
//          + geometry.safeAreaInsets.top + geometry.safeAreaInsets.bottom
          
          let imageOffset = (screenHeight / 2) + 36
          
          ZStack {
            //MARK: Background Color
            Color.background
              .ignoresSafeArea()
            
            //MARK: Background Img
            Image("Background")
              .resizable()
              .ignoresSafeArea()
              .offset(y: -bottomSheetTranslationProrated * imageOffset)
            
            //MARK: House Img
            Image("House")
              .frame(maxHeight: .infinity, alignment: .top)
              .padding(.top, 257)
              .offset(y: -bottomSheetTranslationProrated * imageOffset)
            
            VStack {
              Text("Montreal")
                .font(.largeTitle)
              VStack {
                Text(mainString)
                Text("H:24°  L:18°")
                  .font(.title3.weight(.semibold))
              }
              Spacer()
            }//vs
            .padding(.top, 51)
            
            // MARK: Bottom Sheet
            BottomSheetView(position: $bottomSheetPosition) {
               Text(bottomSheetTranslationProrated.formatted())
            } content: {
                ForecastContentView()
            }
            .onBottomSheetDrag { translation in
              bottomSheetTranslation = translation / screenHeight
            }

            // MARK: Tab Bar
            NPTabBar(action: {
              bottomSheetPosition = .top
            })
            
          }//zstack
          .navigationBarHidden(true)
        }//geo
        
      }//ns
      
    }//body
}

extension HomeView {
  
  private var mainString: AttributedString {
    var string = AttributedString("19°" + "\n " + "Mostly Clear")
    
    if let temp = string.range(of: "19°") {
      string[temp].font = .system(size: 96, weight: .thin)
      string[temp].foregroundColor = .primary
    }
    if let pipe = string.range(of: " | ") {
      string[pipe].font = .title3.weight(.semibold)
      string[pipe].foregroundColor = .secondary
    }
    if let weather = string.range(of: "Mostly Clear") {
      string[weather].font = .title3.weight(.semibold)
      string[weather].foregroundColor = .secondary
    }
    
    return string
  }
  
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        .preferredColorScheme(.dark)
    }
}
