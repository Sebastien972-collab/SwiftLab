//
//  CardGameView.swift
//  SwiftLab
//
//  Created by cyrilH on 22/07/2025.
//

import SwiftUI

struct CardGameView: View {
    
    let game : Multigames
    
    var body: some View {
        
        VStack{
            VStack{
                
                Image(game.image)
                    .resizable()
                    .frame(width: 151, height: 93)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.top, 8)
                Spacer()
                VStack(alignment: .leading){
                    Text(game.name)
                        .lineLimit(2)
                        .fixedSize(horizontal: false, vertical: true)
                        .fontWeight(.medium)
                    
                    
                    
                    
                    
                    HStack(spacing: 2){
                        Text("difficulté :")
                            .font(.caption)
                            .fontWeight(.medium)
                        Spacer()
                        
                        
                        ForEach(0..<5, id: \.self) { index in
                            Image(systemName: index < game.difficulte ? "star.fill" : "star")
                                
                                .resizable()
                                .frame(width: 14, height: 14)
                                
                        }
                       
                    }
                    HStack{
                        Text("En ligne")
                            .font(.caption)
                            .fontWeight(.medium)
                        Spacer()
                        ZStack{
//                            ForEach(game.group) { _ in joueur
                                Image(systemName: "pencil.circle.fill")
                                    .resizable()
                                    .frame(width: 14, height: 14)
                                
                                //metre laffichage a dembo
//                            }
                        }
                        
                    }.padding(.bottom,8)
                    
                }
                
            }
            .padding(.horizontal,7)
        }
        .foregroundStyle(.black)
        .frame(width: 167, height: 209)
        .background(.accent )
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    
    CardGameView(game: Multigames.exercice1)
    
}
