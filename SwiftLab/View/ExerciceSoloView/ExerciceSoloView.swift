//
//  ExerciceSoloView.swift
//  SwiftLab
//
//  Created by cyrilH on 09/07/2025.
//

import SwiftUI

struct ExerciceSoloView: View {
    // On crée un manager d'exercice à partir de nos données
    @State var manager = ExerciceSoloManager(exercice:  ExoDatas.swiftBasics)
    @State private var isSelected = false
    
    var body: some View {
        ZStack{
            Color.customBeige.ignoresSafeArea()
            VStack {
                if manager.currentExercice.exerciceFinished {
                    Text(" Exercice terminé !")
                        .font(.title)
                        .padding()
                } else {
                    // Sinon, on affiche la question actuelle
                    if let question = manager.currentQuestion {
                        VStack {
                            Text(question.question)
                                .font(.largeTitle)
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            // Liste des réponses proposées
                            ForEach(question.choices, id: \.self) { choice in
                                QuizChoiceView(selectedChoice: $manager.selectedAnswer, choices: choice)
                                
                            }
                            // Bouton pour aller à la prochaine question
                            ContinueButtonView(title: "Question suivante", color: .customClearOrange) {
                                manager.goToNextQuestion()
                            }
                            .frame(width: 200, height: 30)
                            .padding()
                        }
                    }
                }
            }
        }
        //                VStack(spacing: 20) {
        //                    // Si l'exercice est terminé, on affiche un message final
        //                    if manager.currentExercice.exerciceFinished {
        //                        Text(" Exercice terminé !")
        //                            .font(.title)
        //                            .padding()
        //
        //                        Button("Recommencer") {
        //                            manager.restartExercice()
        //                        }
        
        
        //                        .buttonStyle(.borderedProminent)
        
        
        //                    } else {
        //                        // Sinon, on affiche la question actuelle
        //                        if let question = manager.currentQuestion {
        //                            Text(question.question)
        //                                .font(.title2)
        //                                .multilineTextAlignment(.center)
        //                                .padding()
        //
        //                            // Liste des réponses proposées
        //                            ForEach(question.answers.indices, id: \.self) { index in
        //                                Button(action: {
        //                                    manager.answerCurrentQuestion(with: index)
        //                                }) {
        //                                    HStack {
        //                                        Text(question.answers[index])
        //                                        Spacer()
        //                                        if question.validAnswer {
        //                                            // Affiche ✅ si la réponse est correcte
        //                                            if index == question.goodAnswer {
        //                                                Text("✅")
        //                                            }
        //                                        } else if question.validAnswer == false && index == question.goodAnswer {
        //                                            // Affiche ❌ pour les mauvaises réponses
        ////                                            Text("✅") // Affiche la bonne réponse même après erreur
        //                                        }
        //                                    }
        //                                }
        //                                .padding()
        //                                .background(Color.gray.opacity(0.1))
        //                                .cornerRadius(10)
        //                            }
        //
        //                            // Bouton pour aller à la prochaine question
        //                            Button("Question suivante") {
        //                                manager.goToNextQuestion()
        //                            }
        //                            .padding(.top)
        //                            .buttonStyle(.bordered)
        //                        }
        //                    }
        //                }
        //                .padding()
        
        
    }
    
}

#Preview {
    NavigationStack {
        ExerciceSoloView()
    }
}
