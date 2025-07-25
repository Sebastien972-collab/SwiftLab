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
//    @State var games = MultiGamesManager()
    var body: some View {
        ScrollView(.vertical){
            LazyVGrid(columns: columns, spacing: 25){
//                ForEach(Multigames.allGames) { games in
                    NavigationLink{
                        BigCardGameView()
                    } label: {
                        CardGameView()
                    }
//                }
            }
        }
    }
}

#Preview {
    
        AllGamesView()
   
}
