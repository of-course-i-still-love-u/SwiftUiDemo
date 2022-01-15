//
//  Item.swift
//  Ps5Concept
//
//  Created by PongsathornL on 13/1/2565 BE.
//

import SwiftUI

struct ItemPS: View {
  var item: PSItem = PSItems[0]
  @Binding var isTabItem: Bool
  @Binding var selectedItem: PSItem

  var body: some View {

    ZStack {
      RoundedRectangle(cornerRadius: 16)
        .fill(
          isTabItem && selectedItem.image == item.image
            ? .blue
            : Color(
              #colorLiteral(
                red: 0.9333333373069763, green: 0.9490196108818054, blue: 0.9803921580314636,
                alpha: 1
              )))

      RoundedRectangle(cornerRadius: 16)
        .strokeBorder(
          LinearGradient(
            gradient: Gradient(stops: [
              .init(
                color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
                location: 0.14972905814647675),
              .init(
                color: Color(
                  #colorLiteral(
                    red: 0.21666663885116577, green: 0.3269501328468323, blue: 0.4333333373069763,
                    alpha: 0.4000000059604645)), location: 1),
            ]),
            startPoint: UnitPoint(x: 0.6250000412470067, y: -0.0000013948107774885976),
            endPoint: UnitPoint(x: 0.3846152925838848, y: 1.2619033373285173)), lineWidth: 1
        )

      VStack(alignment: .leading, spacing: 8) {
        Image(isTabItem && selectedItem.image == item.image ? "Heart" : "Heart_unPressed")
          .aspectRatio(contentMode: .fill)

        Image(item.image)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .padding(.top,isTabItem && selectedItem.image == item.image ? -100:0)
          .frame(width: 144, height: 240)
        
        //.clipped()

        Text(item.title)
          .font(.custom("Montserrat-Regular", size: 12))
          .foregroundColor(.black)

        Text(item.text)
          .font(.custom("Druk Wide Bold", size: 14))
          .foregroundColor(isTabItem && selectedItem.image == item.image ? .white:.blue)

      }
      .padding()
    }
    .compositingGroup()
    .frame(width: 175, height: 360)
    // .rotationEffect(.degrees(0))
    .shadow(
      color: Color(
        #colorLiteral(
          red: 0.5341666340827942, green: 0.6459667086601257, blue: 0.7491666674613953,
          alpha: 0.47999998927116394)), radius: 16, x: 4, y: 2)
    //.paddin()

  }

}

//struct Item_Previews: PreviewProvider {
//  static var previews: some View {
//    ItemPS()
//  }
//}
