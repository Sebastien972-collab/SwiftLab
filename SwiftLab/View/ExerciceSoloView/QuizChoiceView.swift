//
//  QuizChoiceView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 11/07/2025.
//

import SwiftUI

struct QuizChoiceView: View {
    @Binding var selectedChoice: String
    @Binding var showDiferentView : Int
    let choices: String
    @State private var attempts: Int = 0
    @State private var offset: CGFloat = 0
    let correctAnswer : String
    var body: some View {
        Button {
            selectedChoice = choices
        } label: {
            ZStack {
                Capsule()
                    .fill(selectedChoice == choices ? Color.customClearOrange : Color.white)
                Text(choices)
                    .foregroundStyle(.black)
                    .font(.headline)
                    .lineLimit(nil) // ou nil pour illimité
                    .minimumScaleFactor(0.75)
                    .padding()    
            }
        }
        .onAppear {
            if showDiferentView != 0 && choices == correctAnswer {
                selectedChoice = correctAnswer
            }
        }
        .frame(width: 300, height: 70)
    }
}

#Preview {
    ZStack {
        Color.customBeige.ignoresSafeArea()
        VStack {
            QuizChoiceView(selectedChoice: .constant(""), showDiferentView: .constant(0)  , choices: "Var", correctAnswer: "Var")
            QuizChoiceView(selectedChoice: .constant("Var"), showDiferentView: .constant(0), choices: "Var", correctAnswer: "Var")
        }
    }
}
