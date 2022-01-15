//
//  DetailsView.swift
//  Ps5Concept
//
//  Created by PongsathornL on 13/1/2565 BE.
//

import SwiftUI

struct DetailsView: View {
      @Binding  var item: PSItem
//  var item: PSItem = PSItems[2]

  var body: some View {

    VStack(spacing: 0) {

      ZStack {

        Image("DUAL_SENSE")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .padding()
          .frame(width: 400)
          .padding(.bottom, 220)

        Image("Slider")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 250)
          .padding(.top, 300)

        Image(item.image)
            .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(maxWidth: .infinity)
          .frame(height: 250)
          .padding(.top, item.image == "Controller" ? 20: 60)

      }

      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 0) {
          ForEach(items) { item in
            CardBox(item: item)
          }
        }
        .padding()
      }

      HStack {

        Text("$70")

          .frame(width: 140, height: 80)
          .background(Color(UIColor(named: "2E70E2")!))
          .cornerRadius(.infinity)
        Spacer()

        Text("Buy Now")
        Spacer()

      }

      .frame(width: 350, height: 70)
      .font(.custom("Montserrat-Bold", size: 24))
      .background(.blue)
      .cornerRadius(.infinity)
      .foregroundColor(.white)
      .padding(.top, 10)
      .padding(.bottom, 50)
      .padding(.horizontal, 20)

    }

    .frame(maxWidth: .infinity)
    .frame(height: 740)
    .background(Color(UIColor(named: "EEF2FA")!))

    //    .background(.red)
    .cornerRadius(40, corners: [.topLeft, .topRight])
    .ignoresSafeArea()
    .offset(x: 0, y: 65)

  }
}

//struct DetailsView_Previews: PreviewProvider {
//  static var previews: some View {
//    DetailsView()
//  }
//}

struct RoundedCorner: Shape {

  var radius: CGFloat = .infinity
  var corners: UIRectCorner = .allCorners

  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(
      roundedRect: rect, byRoundingCorners: corners,
      cornerRadii: CGSize(width: radius, height: radius))
    return Path(path.cgPath)
  }
}

extension View {
  func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
    clipShape(RoundedCorner(radius: radius, corners: corners))
  }
}
