//
//  GameView.swift
//  SwiftLab
//
//  Created by cyrilH on 23/07/2025.
//

import SwiftUI
import WebKit

struct GameView: View {
    var game: Game
    @State var userAnswer : String = ""
    @State private var isCorrect: Bool? = nil
    @State private var showConfirmation = false
    @State private var showWebView = false
    @Environment(\.dismiss) private var dismiss
    @FocusState private var isFocused : Bool
    
    var body: some View {
        ZStack{
            Color.customBeige.ignoresSafeArea()
            ScrollView(showsIndicators: false){
                VStack(alignment: .center){
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
                                .focused($isFocused)
                                .textInputAutocapitalization(.never)
                                .textFieldStyle(.roundedBorder)
                                .font(.system(.body, design: .monospaced))
                                .submitLabel(.send)
                                .onSubmit {
                                    isCorrect = userAnswer.trimmingCharacters(in: .whitespacesAndNewlines) == game.goodAnswer.trimmingCharacters(in: .whitespacesAndNewlines)
                                    isFocused = false
                                }
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
                                isCorrect = userAnswer.trimmingCharacters(in: .whitespacesAndNewlines) == game.goodAnswer.trimmingCharacters(in: .whitespacesAndNewlines)
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
                        .padding(.top,5)
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
                    HStack {
                        ButtonHelpView(action: {
                            showWebView.toggle()
                        })
                        Spacer()
                            .padding(.leading)
                    }
                    .navigationDestination(isPresented: $showWebView, destination: {
                        SafariView(url: "https://www.udemy.com/course/apprendre-swift/?couponCode=KEEPLEARNING")
                    })
                    .padding()
                }
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        if isFocused {
                            Button {
                                isFocused = false
                            } label: {
                                Text("Done")
                            }
                        }
                    }
                    ToolbarItem(placement: .principal) {
                        Text(game.name)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        GameView(game: Game.allGames[0])
    }
    
}





