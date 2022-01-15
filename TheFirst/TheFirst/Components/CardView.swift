//
//  CardView.swift
//  TheFirst
//
//  Created by PongsathornL on 11/1/2565 BE.
//

import SwiftUI

struct CardView: View {
  var item: Item = items[1]

  var body: some View {
    VStack(alignment: .leading,spacing: 16) {

      Image(item.image)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(height: 100)
        .frame(maxWidth: .infinity)

      Text(item.title)
        .font(.title)
        .fontWeight(.bold)
        .blendMode(.overlay)
        .lineLimit(2)

        

      Text(item.text)
        .opacity(0.7)
        .blendMode(.overlay)
        .lineLimit(4)
       

      Text("Set up your wallet")
        .opacity(0.7)
        .blendMode(.overlay)
    }

    .foregroundColor(.white)
    .padding()
    .frame(width: 252, height: 329 )
    .background(
      item.gradient
    )
    .cornerRadius(30)
  }
}

struct CardView_Previews: PreviewProvider {
  static var previews: some View {
    CardView()
  }
}
