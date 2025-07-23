//
//  CardGameView.swift
//  SwiftLab
//
//  Created by cyrilH on 22/07/2025.
//

import SwiftUI

struct CardGameView: View {
    var body: some View {
        VStack{
            VStack{
                
                Image(.sims)
                    .resizable()
                    .frame(width: 151, height: 93)
                    .cornerRadius(20)
                    .padding(.top, 8)
                Spacer()
                VStack(alignment: .leading){
                    Text("non du games")
                        .fontWeight(.medium)

                    HStack(spacing: 2){
                        Text("difficulté :")
                            .font(.caption)
                            .fontWeight(.medium)
                        Spacer()
                        
                        // for each etoile jaune
                        // for each etoile grise en z stack??
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 14, height: 14)
                            
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 14, height: 14)
                            
                            
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 14, height: 14)
                            
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 14, height: 14)
                            
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 14, height: 14)
                            
                    }
                    HStack{
                        Text("En ligne")
                            .font(.caption)
                            .fontWeight(.medium)
                        Spacer()
                        ZStack{
                            Image(systemName: "pencil.circle.fill")
                                .resizable()
                                .frame(width: 14, height: 14)
                            
                           //metre laffichage a dembo
                            
                        }
                        
                    }.padding(.bottom)
                    
                }
            }
            .padding(.horizontal,7)
        }
        .frame(width: 167, height: 199)
        .background(.accent )
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    CardGameView()
}
