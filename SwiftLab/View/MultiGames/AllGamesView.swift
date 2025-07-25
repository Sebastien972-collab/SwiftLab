//
//  AllGamesView.swift
//  SwiftLab
//
//  Created by cyrilH on 22/07/2025.
//

import SwiftUI

let columns = [
    GridItem(.flexible()),
    GridItem(.flexible()),
    
]
struct AllGamesView: View {
    @State private var manager = MultiGamesManager()
    @State private var path = NavigationPath()
       
    var body: some View {
        
            ScrollView(.vertical ,showsIndicators: false){
                LazyVGrid(columns: columns, spacing: 25){
                    ForEach(manager.games) { games in
                        
                        NavigationLink{
                            BigCardGameView(game: games)
                        } label: {
                            CardGameView(game: games)
                        }
                    }
                }
            }
            
        
    }
}

#Preview {
    
        AllGamesView()
   
}
