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
    
    var body: some View {
        ScrollView(.vertical){
            LazyVGrid(columns: columns, spacing: 25){
//                for each des exo
                NavigationLink{
                    BigCardGameView()
                } label: {
                    CardGameView() 
                }
                
                
                
                
            }
        }
    }
}

#Preview {
    
        AllGamesView()
   
}
