//
//  NavBar.swift
//  NorthPoleWeather
//
//  Created by AndreMacBook on 2023-04-06.
//

import SwiftUI

struct NavBar: View {
  @Binding var searchText: String
  
  @Environment(\.dismiss) private var dismiss
    var body: some View {
      VStack(spacing: 8) {
        HStack {
          // MARK: Back Btn
          Button {
            dismiss()
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
        
        // MARK: Search Bar
          HStack(spacing: 2) {
            Image(systemName: "magnifyingglass")
            TextField("Search for a city or airport", text: $searchText )
          }
        .foregroundColor(.secondary)
        .padding(.horizontal, 6)
        .padding(.vertical, 7)
        .frame(height: 36, alignment: .leading)
        .background(Color.bottomSheetBackground, in: RoundedRectangle(cornerRadius: 10))
        .innerShadow(shape: RoundedRectangle(cornerRadius: 10), color: .black.opacity(0.25), lineWidth: 210, offsetX: 0, offsetY: 2, blur: 2, blendMode: .overlay, opacity: 0)
        
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
      NavBar(searchText: .constant(""))
    }
}
