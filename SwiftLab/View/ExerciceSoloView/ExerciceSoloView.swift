//
//  ExerciceSoloView.swift
//  SwiftLab
//
//  Created by cyrilH on 09/07/2025.
//

import SwiftUI

struct ExerciceSoloView: View {
    // On crée un manager d'exercice à partir de nos données
    @State var manager = ExerciceSoloManager(exercices: ExoDatas.swiftBasics)
    @State private var isSelected = false
    
    var body: some View {
        ZStack{
            Color.customBeige.ignoresSafeArea(.all)
            VStack {
                HStack {
                    VStack {
                        Text("Quiz")
                            .font(.title)
                            .bold()
                            .padding(.horizontal)
                    }
                    Spacer()
                }
                if manager.exerciceFinished {
                    Text(" Exercice terminé !")
                        .font(.title)
                        .padding()
                } else {
                    // Sinon, on affiche la question actuelle
                    QuizView(question: manager.currentQuestiion, manager: $manager)
                }
            }
        }
        
        
        
    }
    
}

#Preview {
    NavigationStack {
        ExerciceSoloView()
    }
}

struct QuizView: View {
    var question: QuizExercice
    @Binding var manager:  ExerciceSoloManager
    var body: some View {
        VStack {
            Text(manager.currentQuestiion.question)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
                .bold()
            ForEach(question.choices, id: \.self) { choice in
                QuizChoiceView(selectedChoice: $manager.selectedAnswer, choices: choice)
                
            }
            ContinueButtonView(title: "Question suivante", color: .customClearOrange) {
                withAnimation {
                    manager.goToNextQuestion()
                }
            }
            .frame(width: 300, height: 60)
            .padding()
        }
    }
}
