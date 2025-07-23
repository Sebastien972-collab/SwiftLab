//
//  GameView.swift
//  SwiftLab
//
//  Created by cyrilH on 23/07/2025.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        ZStack{
            Color.customBeige.ignoresSafeArea()
            
            VStack(alignment: .leading){
                VStack{
                    Image(.sims)
                        .resizable()
                        .frame(width: 309, height: 184)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .padding()
                }
                .frame(width: 329, height: 208)
                .background(.accent )
                .clipShape(RoundedRectangle(cornerRadius: 16))
                VStack{
                    VStack{
                        Text("blalbalba")
                        
                    }
                    .frame(width: 308, height: 212)
                    .background(.grayBorder )
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    HStack{
                        Button {
                            
                        } label: {
                            Text("Tester")
                                .foregroundStyle(.black)
                                .font(.headline)
                                .fontWeight(.medium)
                        }
                        .frame(width: 110.0, height:33 )
                        .background(Color.white)
                        .clipShape(Capsule())
                        
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Envoyer")
                                .foregroundStyle(.white)
                                .font(.headline)
                                .fontWeight(.medium)
                        }
                        .frame(width: 110.0, height:33 )
                        .background(Color.customClearOrange)
                        .clipShape(Capsule())
                    }
                    .padding(.horizontal,10)
                    
                }
                .frame(width: 329, height: 306)
                .background(.customBlue )
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .padding(.top)
                
                Button {
                    
                } label: {
                    Text("Un appel à un ami ?")
                }
                
            }
        }
    }
}

#Preview {
    GameView()
}
