//
//  SmallCardView.swift
//  TheFirst
//
//  Created by PongsathornL on 12/1/2565 BE.
//

import SwiftUI

struct SmallCardView: View {
    var item: Item = items[0]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {

          Image(item.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 99)
            .frame(maxWidth: .infinity)

          Text(item.title)
            .font(.headline)
            .fontWeight(.bold)
            .lineLimit(1)
            


          Text("Set up your wallet")
            .opacity(0.7)
            .blendMode(.overlay)
        }
        
        .foregroundColor(.white)
       .padding(10)
        .frame(height: 222)
        .background(
          item.gradient
        )
        .cornerRadius(30)
    }
}

struct SmallCardView_Previews: PreviewProvider {
    static var previews: some View {
        SmallCardView()
    }
}
