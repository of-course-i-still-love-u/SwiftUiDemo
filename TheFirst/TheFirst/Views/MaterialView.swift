//
//  TestingView.swift
//  TheFirst
//
//  Created by PongsathornL on 12/1/2565 BE.
//

import SwiftUI

struct MaterialView: View {
  var body: some View {
    ZStack {
      Image("background")
        
        .resizable()
        .aspectRatio(contentMode: .fill)
        .ignoresSafeArea()
        
      VStack(alignment: .leading, spacing: 4) {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
          .font(.largeTitle).bold()
          .foregroundStyle(
            .linearGradient(
              colors: [.purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
          
          Text("Text with Overlay")
              .font(.largeTitle).bold()
              .blendMode(.overlay)
          
      }
      .padding(.horizontal, 16)
      .padding(.vertical,50)
      .background(.ultraThinMaterial,
                  in:RoundedRectangle(cornerRadius: 20))
        
    }
  }
}

struct TestingView_Previews: PreviewProvider {
  static var previews: some View {
      MaterialView()
  }
}
