//
//  ExerciceSoloView.swift
//  SwiftLab
//
//  Created by cyrilH on 09/07/2025.
//

import SwiftUI


struct ExerciceSoloView: View {
    @State var manager = ExerciceSoloManager(exercices: ExoDatas.swiftBasics)
    @State private var valuePage = 0
    @Binding var exercice: Exercices?

    var body: some View {
        ZStack {
            Color.customBeige.ignoresSafeArea()

            VStack(alignment: .leading, spacing: 16) {
                Text("Quiz")
                    .font(.title)
                    .bold()
                    .padding(.horizontal)

                if manager.exerciceFinished {
                    VStack(spacing: 16) {
                        Text("Exercice terminé !")
                            .font(.title)
                            .bold()

                        Button("Recommencer") {
                            withAnimation {
                                manager.restartExercice()
                            }
                        }
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                    }
                    .frame(maxWidth: .infinity)
                    .transition(.opacity.combined(with: .scale))
                } else {
                    QuizView(
                        question: manager.currentQuestion,
                        showDifferentView: $valuePage,
                        manager: $manager
                    )
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                }

                Spacer()
            }
            .padding(.top, 40)
            .animation(.easeInOut, value: manager.exerciceFinished)
        }
        .onAppear {
            guard let exercexercice = exercice else { return }
            self.manager = .init(exercices: exercexercice)
        }
    }
}

#Preview {
    NavigationStack {
        ExerciceSoloView(exercice: .constant(nil))
    }
}

// MARK: - QuizView

struct QuizView: View {
    var question: QuizExercice
    @Binding var showDifferentView: Int
    @Binding var manager: ExerciceSoloManager

    var body: some View {
        VStack(spacing: 20) {
            Text(question.question)
                .font(.title2)
                .bold()
                .lineLimit(nil)
                .multilineTextAlignment(.center)
                .padding()

            ForEach(question.choices, id: \.self) { choice in
                QuizChoiceView(
                    selectedChoice: $manager.selectedAnswer,
                    showDiferentView: $showDifferentView,
                    choices: choice,
                    correctAnswer: question.goodAnswer
                )
            }

            ContinueButtonView(
                title: "Question suivante",
                color: .customClearOrange
            ) {
                withAnimation {
                    manager.answerCurrentQuestion(with: manager.selectedAnswer)
                }
            }
            .frame(width: 300, height: 60)
            .padding(.top, 10)
        }
        .padding()
    }
}
