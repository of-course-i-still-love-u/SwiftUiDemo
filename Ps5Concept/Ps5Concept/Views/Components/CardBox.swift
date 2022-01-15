//
//  CardBlockView.swift
//  Ps5Concept
//
//  Created by PongsathornL on 13/1/2565 BE.
//

import SwiftUI

struct CardBox: View {
  var item: Item = items[2]

  var body: some View {

    ZStack {
      Image(item.image)
        .aspectRatio(contentMode: .fill)
        .frame(width: 160, height: 170)
        .padding(.horizontal,5)

      VStack(alignment: .leading, spacing: 16) {
        Image(item.icon)
          .aspectRatio(contentMode: .fill)
          

        Text(item.text)
          .font(.custom("Montserrat-Bold", size: 14))
          .lineLimit(2)

      }
      .padding()
      .frame(width: 160, height: 170)

    }

  }

}

struct CardBlockView_Previews: PreviewProvider {
  static var previews: some View {
      CardBox()
  }
}
