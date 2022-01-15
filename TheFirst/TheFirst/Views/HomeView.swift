//
//  HomeView.swift
//  TheFirst
//
//  Created by PongsathornL on 11/1/2565 BE.
//

import SwiftUI

struct HomeView: View {
  var body: some View {

    NavigationView {
      ScrollView {
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(spacing: 20) {
            ForEach(items) { item in
              NavigationLink(
                destination:
                  DetailView()
              ) {
                CardView(item: item)
              }

            }

          }
          .padding()
        }
        .navigationTitle("NFTs")
        Text("More Items")
          .font(.subheadline).bold()
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding()

        LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 16)], spacing: 16) {
          ForEach(items) { item in
            NavigationLink(destination: DetailView()) {
              SmallCardView(item: item)
            }

          }
        }
        .padding()

      }
    

     
    }

  }

}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
