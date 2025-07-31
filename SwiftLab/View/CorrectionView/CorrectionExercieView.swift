//
//  CorrectionExercieView.swift
//  SwiftLab
//
//  Created by cyrilH on 17/07/2025.
//

import SwiftUI

struct CorrectionExerciceView: View {
    
    @State var manager = ExerciceSoloManager(exercices: ExoDatas.swiftBasics)
    @State var valuePage = 1
    @Namespace var animation
    
    var body: some View {
        ZStack {
            Color.customBeige.ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    if manager.exerciceFinished {
                        VStack(spacing: 16) {
                            Text("Exercice terminé !")
                                .font(.title)
                                .bold()
                                .transition(.scale)
                            Button {
                                withAnimation(.spring()) {
                                    manager.restartExercice()
                                }
                            } label: {
                                Text("Revoir les réponses")
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(12)
                                    .padding(.horizontal)
                            }
                        }
                        .padding(.top, 50)
                        .animation(.easeInOut, value: manager.exerciceFinished)
                    } else {
                        QuizView(
                            question: manager.currentQuestion,
                            showDifferentView: $valuePage,
                            manager: $manager
                        )
                        .transition(.move(edge: .bottom).combined(with: .opacity))
                        .animation(.spring(), value: manager.currentQuestionIndex)
                        correctionCardView
                            .padding(.top, 10)
                            .transition(.opacity.combined(with: .scale))
                            .animation(.easeInOut, value: manager.currentQuestionIndex)
                    }
                }
                .navigationTitle("Correction")
                .padding(.top, 40)
            }
        }
    }
    // Correction bubble/card with icon
    var correctionCardView: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .top, spacing: 8) {
                Image(systemName: "lightbulb.circle.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(.yellow)
                Text(manager.currentQuestion.correction)
                    .font(.system(size: 14, weight: .medium))
                    .lineLimit(nil)
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.leading)
            }
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(Color.grayBorder)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .padding(.horizontal)
    }
}

#Preview {
    NavigationStack {
        CorrectionExerciceView()
    }
}
