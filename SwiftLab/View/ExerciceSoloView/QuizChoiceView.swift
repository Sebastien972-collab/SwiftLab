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
    @State private var attempts: Int = 0
    @State private var offset: CGFloat = 0
    
    var body: some View {
        Button {
            selectedChoice = choices
            
        } label: {
            ZStack {
                Capsule()
                    .fill(selectedChoice == choices ? Color.customClearOrange : Color.white)
                Text(choices)
                // si quiz fini ou .. == true alors montre color good answer ou recree un page ?
                    .foregroundStyle(.black)
                    .font(.headline)
                    .lineLimit(2) // ou nil pour illimité
                    .minimumScaleFactor(0.75)
                    .padding()
                
            }
        }
        .frame(width: 300, height: 70)
        
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
