//
//  RessourcesExercisesCard.swift
//  SwiftLab
//
//  Created by Thibault on 18/07/2025.
//

import SwiftUI

struct RessourcesExercicesCard: View {
    let exercice: Exercices
    
    var body: some View {
        VStack(spacing: 12) {
            // SFSymbol
            Image(systemName: "inset.filled.rectangle.and.person.filled")
                .resizable()
                .foregroundStyle(.white)
                .frame(width: 26, height: 18)
            
            // Titre
            Text(exercice.nameOfExercices)
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(.white)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 16)
        .background {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.customDarkGreen)
        }
        .frame(width: 150, height: 140)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    RessourcesExercicesCard(exercice: ExoDatas.swiftBasics)
}

