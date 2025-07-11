//
//  QuizChoiceView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 11/07/2025.
//

import SwiftUI

struct QuizChoiceView: View {
    @Binding var selectedChoice: String
    let choices: String
    
    var body: some View {
        Button {
            selectedChoice = choices
        } label: {
            ZStack {
                Capsule()
                    .fill(selectedChoice == choices ? Color.customClearOrange : Color.white)
                    .frame(width: 200, height: 40)
                Text(choices)
                    .foregroundStyle(.black)
                    .font(.headline)
            }
        }
        .clipped()

    }
}

#Preview {
    ZStack {
        Color.customBeige
        VStack {
            QuizChoiceView(selectedChoice: .constant(""), choices: "Var")
            QuizChoiceView(selectedChoice: .constant("Var"), choices: "Var")
        }
    }
}
