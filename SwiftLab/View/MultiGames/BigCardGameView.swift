//
//  BigCardGameView.swift
//  SwiftLab
//
//  Created by cyrilH on 23/07/2025.
//

import SwiftUI

struct BigCardGameView: View {
    var game : Game
    
    var body: some View {
        ZStack{
            Color.customBeige.ignoresSafeArea()
            VStack{
                HStack{
                    Spacer()
                    MignatureParticipant(participants: User.userDatabase)
                        .padding(.horizontal)
                    InviteButton()
                }
                .padding(.top,16)
                .padding(.trailing, 16)
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
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
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
            .frame(maxWidth :340)
            .background(.accent )
            .clipShape(RoundedRectangle(cornerRadius: 16))
        }
    }
}

#Preview {
    
    BigCardGameView(game: Game.allGames[0])
    
}
