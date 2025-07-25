//
//  GameView.swift
//  SwiftLab
//
//  Created by cyrilH on 23/07/2025.
//

import SwiftUI

struct GameView: View {
    let game : Multigames
    @State var userAnswer : String = ""
    @State private var isCorrect: Bool? = nil
    @State private var showConfirmation = false
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack{
            Color.customBeige.ignoresSafeArea()
            
            VStack(alignment: .leading){
                VStack{
                    Image(game.image)
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
                        Text(game.description)
                            .font(.body)
                        TextEditor(text: .constant(game.codeBefore))
                            .frame(height: 60)
                            .disabled(true)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                        
                        TextField("Ta réponse ici...", text: $userAnswer)
                            .textFieldStyle(.roundedBorder)
                            .font(.system(.body, design: .monospaced))
                        
                        TextEditor(text: .constant(game.codeAfter))
                            .frame(height: 60)
                            .disabled(true)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                        
                    }
                    .frame(width: 308, height: 289)
                    .background(.grayBorder )
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    HStack{
                        Button {
                            isCorrect = userAnswer.trimmingCharacters(in: .whitespacesAndNewlines) == game.goodAnswer
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
                            showConfirmation = true
                        } label: {
                            Text("Envoyer")
                                .foregroundStyle(.white)
                                .font(.headline)
                                .fontWeight(.medium)
                        }
                        .frame(width: 110.0, height:33 )
                        .background(Color.customClearOrange)
                        .clipShape(Capsule())
                        .alert("Réponse envoyée", isPresented: $showConfirmation) {
                            Button("OK") {
                                dismiss()
                            }
                        } message: {
                            Text("Ta réponse a été envoyée.")
                        }
                    }
                    .padding(.horizontal,10)
                    if let isCorrect = isCorrect {
                        Text(isCorrect ? " Bonne réponse !" : " Mauvaise réponse")
                            .foregroundStyle(isCorrect ? .green : .red)
                            .font(.headline)
                    }
                        
                    
                }
                .frame(width: 329, height: 395)
                .background(.customBlue )
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .padding(.top)
                .padding(.bottom)
                
                Button {
                    
                } label: {
                    Text("Un appel à un ami ?")
                }
                
            }
        }
    }
}

#Preview {
    GameView(game: Multigames.exercice1)
}
