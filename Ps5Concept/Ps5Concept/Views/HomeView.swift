//
//  HomeView.swift
//  Ps5Concept
//
//  Created by PongsathornL on 13/1/2565 BE.
//

import SwiftUI

struct HomeView: View {
  @State public var show = false
  @State var tabItem = false
  @State  var selectedItem: PSItem = PSItems[1]
  @State  var selectedItemText: PSItem = PSItems[1]

  var body: some View {

    ZStack {

      VStack {

        HStack {
          Image(systemName: "list.bullet")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(show ? .white : .black)
            .frame(width: 25, height: 25)
          Spacer()
          Image(show ? "PS5Logo_white" : "PS5Logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 160, height: 45)
          Spacer()
          Image(systemName: "gearshape")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(show ? .white : .black)
            .frame(width: 25, height: 25)

        }
        .padding()
        .padding(.top, 20)

        ScrollView(showsIndicators: false) {

          LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 16)], spacing: 16) {

            ForEach(PSItems) { item in

              ItemPS(item: item, isTabItem: $tabItem, selectedItem: $selectedItem)

                .onTapGesture {
                  withAnimation {
                    selectedItem = item
                    tabItem.toggle()
                    print("is show = \(show)")
                    print("this item = \(item)")

                  }
                }
                .onLongPressGesture(minimumDuration: 0.5) {
                  withAnimation {
                    selectedItemText = item
                    show.toggle()
                  }

                }

            }
          }
          .padding(.top,40)
          .padding(.bottom,80)
          

        }

        .padding(.horizontal)

      }
        

      ZStack {

        DetailsView(item: $selectedItemText)
          .gesture(
            TapGesture(count: 1).onEnded({ () in

              withAnimation {
                show.toggle()
                print("is show = \(show)")

              }

            })

          )

      }
      .offset(x: 0, y: show ? 0 : UIApplication.shared.keyWindow?.frame.height ?? 0)

    }

    .padding()
    .background(Color(UIColor(named: show ? "21262E" : "EEF2FA")!))
    .ignoresSafeArea()

  }

}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
