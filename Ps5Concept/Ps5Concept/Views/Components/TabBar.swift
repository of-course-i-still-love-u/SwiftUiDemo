//
//  TabBar.swift
//  Ps5Concept
//
//  Created by PongsathornL on 13/1/2565 BE.
//
// sdfsdf

import SwiftUI

struct TabBar: View {
  @State var selectedTab: Tab = .home
  @State var selectedItem: PSItem = PSItems[1]
  @State var showModal = false

  var body: some View {

    ZStack(alignment: .bottom) {

      Group {
        switch selectedTab {
        case .home:
          HomeView()
        case .search:
          HomeView()
        case .profile:
          HomeView()
        case .cart:
          HomeView()

        }

      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)

      HStack(spacing: 0) {
        ForEach(tabItems) { item in

          Button {

            selectedTab = item.tab

            showModal.toggle()

          } label: {
            Image(systemName: item.icon)
              .aspectRatio(contentMode: .fit)
              .font(.system(size: 24))
              .foregroundColor(selectedTab == item.tab ? .blue : .white)
              .frame(width: 45, height: 45)
              .background(Color(UIColor(named: "21262E")!))
              .cornerRadius(.infinity)
              .shadow(color: .black, radius: 5, x: 2, y: 2)
              .padding()
          }

          // .frame(maxWidth: .infinity)

        }

      }
      .padding(.horizontal, 40)
      .frame(height: 75)
      .background(Color(UIColor(named: "21262E")!))
      .cornerRadius(.infinity)

    }
    .ignoresSafeArea()

  }
}

struct TabBar_Previews: PreviewProvider {
  static var previews: some View {
    TabBar()
  }
}
