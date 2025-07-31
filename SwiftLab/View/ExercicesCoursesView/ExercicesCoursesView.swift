//
//  ExercicesCoursesView.swift
//  SwiftLab
//
//  Created by Dembo on 30/07/2025.
//

import SwiftUI


struct ExercicesCoursesView: View {
    @State var manager = ExercicesCoursesManager(exercicesCourses: ExercicesCourseDatas.swiftCourse1)
    @State private var valuePage = 0

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
                    QuizCoursesView(
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
    }
}

#Preview {
    NavigationStack {
        ExercicesCoursesView()
    }
}

// MARK: - QuizView

struct QuizCoursesView: View {
    var question: QuizCoursesExercices
    @Binding var showDifferentView: Int
    @Binding var manager: ExercicesCoursesManager

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
