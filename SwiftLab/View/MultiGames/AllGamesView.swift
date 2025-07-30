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
    @State private var manager = GamesManager()
    
    
    var body: some View {
        
        ScrollView(.vertical ,showsIndicators: false){
            LazyVGrid(columns: columns, spacing: 25){
                ForEach(Array(manager.games.enumerated()), id: \.element.id) { index, game in
                    NavigationLink{
                        BigCardGameView(game: game)
                    } label: {
                        CardGameView(game: game)
                    }
                }
            }
        }   
    }
}

#Preview {
    
    AllGamesView( )
    
}
