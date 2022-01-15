//
//  DetailView.swift
//  TheFirst
//
//  Created by PongsathornL on 11/1/2565 BE.
//

import SwiftUI

struct DetailView: View {
  var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 10) {

        Image("thunderstroms-sunny")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(height: 100)
          .frame(maxWidth: .infinity)

        Text("Discover, collect, and sell extraordinary NFTs")
          .font(.title)
          .fontWeight(.bold)
          .blendMode(.overlay)
          .lineLimit(2)

        Text("OpenSea is the world's first and largest NFT marketplace")
          .opacity(0.7)
          .blendMode(.overlay)

        Text("Set up your wallet")
          .opacity(0.7)
          .blendMode(.overlay)
      }

      .foregroundColor(.white)
      .padding(20)

      .background(
        LinearGradient(
          gradient: Gradient(stops: [
            .init(
              color: Color(#colorLiteral(red: 1, green: 0, blue: 0.501960813999176, alpha: 1)),
              location: 0),
            .init(
              color: Color(
                #colorLiteral(
                  red: 0.250980406999588, green: 0.8784313797950745, blue: 0.8156862854957581,
                  alpha: 1)), location: 1),
            .init(
              color: Color(#colorLiteral(red: 1, green: 0.5490196347236633, blue: 0, alpha: 1)),
              location: 1),
          ]),
          startPoint: UnitPoint(x: 0.8799999621639236, y: 0.10999996315336436),
          endPoint: UnitPoint(x: 0.04999997969675052, y: 0.9400000014643679))
      )
        
  
        VStack(alignment: .leading, spacing: 16) {
            Text("Once you’ve set up your wallet of choice, connect it to OpenSea by clicking the wallet icon in the top right corner. Learn about the")
                .font(.headline)
        
        
        Text("What crypto wallets can I use with OpenSea?")
            .font(.title).bold()
        
        Text("Just as there are many banks and credit cards, there are many different crypto wallet providers to choose from. They all serve the same purpose, but each one takes a different approach and makes different tradeoffs.")
            
        }
        .padding()
        
    }
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView()
  }
}
