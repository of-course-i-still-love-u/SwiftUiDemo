//
//  ListView.swift
//  TheFirst
//
//  Created by PongsathornL on 11/1/2565 BE.
//

import SwiftUI

struct ListView: View {
    @State var show = false
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                   ListItem()
                        
                        .sheet(isPresented: $show, content: {
                            DetailView()
                            
                        })
                        .onTapGesture {
                            show.toggle()
                        }
                }
            }
            .navigationTitle("MY NFTs")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
