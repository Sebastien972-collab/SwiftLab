//
//  BigCardGameView.swift
//  SwiftLab
//
//  Created by cyrilH on 23/07/2025.
//

import SwiftUI

struct BigCardGameView: View {
    let game : Multigames
    var body: some View {
        ZStack{
            Color.customBeige.ignoresSafeArea()
            VStack{
                VStack(alignment: .leading){
                    Image(game.image)
                        .resizable()
                        .frame(width: 309, height: 184)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .padding(.top, 16)
                    
                    Text(game.name)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text(game.description)
                        .fontWeight(.medium)
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink {
                            
                            GameView(game: game)
                            
                        } label: {
                            Text("lancer")
                                .foregroundStyle(.black)
                                .font(.headline)
                                .fontWeight(.medium)
                        }
                        .frame(width: 110.0, height:33 )
                        .background(Color.customClearOrange)
                        .clipShape(Capsule())
                    }
                }
                .padding(.horizontal,16)
                .padding(.bottom,40)
            }
            .frame(width: 340, height: 388)
            .background(.accent )
            .clipShape(RoundedRectangle(cornerRadius: 16))
        }
        
    }
}

#Preview {
    
        BigCardGameView(game: Multigames.exercice1)
    
}
