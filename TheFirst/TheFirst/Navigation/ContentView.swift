//
//  ContentView.swift
//  TheFirst
//
//  Created by PongsathornL on 11/1/2565 BE.
//

import SwiftUI

struct ContentView: View {
  var body: some View {

    TabView {
      HomeView()
        .tabItem {
          Image(systemName: "flame.fill")
          Text("Home")
        }
      ListView()
        .tabItem {
          Image(systemName: "bolt.fill")
          Text("Detail")
        }

    }

  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
