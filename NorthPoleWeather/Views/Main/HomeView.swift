//
//  HomeView.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-04.
//

import SwiftUI
import BottomSheet

struct HomeView: View {
    @State var sheetIsMiddle = true
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
          
          let imageOffset = (screenHeight / 2) + 120
          
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
//            Image("House")
//              .frame(maxHeight: .infinity, alignment: .top)
//              .padding(.top, 257)
//              .offset(y: -bottomSheetTranslationProrated * imageOffset)
            
            VStack(spacing: -8) {
              Text("North Pole")
                .font(.custom("TiltWarp-Regular", size: 36))
              VStack(alignment: .leading) {
                Text(mainString)
                Text("  H:24°   L:18°")
                  .font(.custom("TiltWarp-Regular", size: 18))
              }
              Spacer()
            }//vs
            .padding(.top, 30)
            
            // MARK: Bottom Sheet
            BottomSheetView(position: $bottomSheetPosition) {
            //               Text(bottomSheetTranslationProrated.formatted())
            } content: {
                ForecastContentView()
            }
            .onBottomSheetDrag { translation in
              bottomSheetTranslation = translation / screenHeight
              if bottomSheetPosition == .top {
                sheetIsMiddle = false
              }
              if bottomSheetPosition == .middle {
                sheetIsMiddle = true
              }
            }
            // MARK: Tab Bar
            NPTabBar(action: {
              if sheetIsMiddle {
                bottomSheetPosition = .top
                sheetIsMiddle = false
              } else if !sheetIsMiddle {
                bottomSheetPosition = .middle
                sheetIsMiddle = true
              }
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
      string[temp].font = .custom("TiltWarp-Regular", size: 80)
      string[temp].foregroundColor = .primary
    }
    if let pipe = string.range(of: " | ") {
      string[pipe].font = .title3.weight(.semibold)
      string[pipe].foregroundColor = .secondary
    }
    if let weather = string.range(of: "Mostly Clear") {
      string[weather].font = .custom("TiltWarp-Regular", size: 18)
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
