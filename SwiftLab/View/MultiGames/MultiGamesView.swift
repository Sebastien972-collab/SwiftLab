//
//  MultiGamesView.swift
//  SwiftLab
//
//  Created by cyrilH on 22/07/2025.
//

import SwiftUI

struct MultiGamesView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.customBeige.ignoresSafeArea()
                VStack{
                    HStack{
//                       switch
                    }
                        AllGamesView()
  
                }
                .navigationTitle("Jouer")
            }
        }
    }
}

#Preview {
    
        MultiGamesView()
    
}
