//
//  ListItem.swift
//  TheFirst
//
//  Created by PongsathornL on 11/1/2565 BE.
//

import SwiftUI

struct ListItem: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "sun.haze.fill")//icon
                .renderingMode(.original)
                .font(.body)
                .frame(width: 36, height: 36)
                .background(Color.black)
                .mask(Circle())
            
            VStack(alignment: .leading, spacing: 4.0) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Once you’ve set up your wallet of choice, connect it to OpenSea by clicking the wallet icon in the top right corner. Learn about the")
            }
          
        }
        .padding(.vertical)
       
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem()
    }
}
