//
//  CardExerciceView.swift
//  SwiftLab
//
//  Created by cyrilH on 09/07/2025.
//

import SwiftUI

struct CardExerciceView: View {
    let exercice: Exercices
    @State private var progress: Double = 0.5
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Icons & badge
            HStack {
                Image(systemName: "inset.filled.rectangle.and.person.filled")
                    .resizable()
                    .foregroundStyle(.white)
                    .frame(width: 26, height: 18)
                
                Spacer()
                
                Text("Nouveau")
                    .font(.system(size: 8, weight: .medium))
                    .foregroundStyle(.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background {
                        Capsule()
                            .fill(Color.customClearGreen)
                    }
            }
            .padding(.horizontal, 16)
            .padding(.top, 16)
            
            // Titre des exo
            VStack(alignment: .leading, spacing: 4) {
                Text(exercice.nameOfExercices)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(.white)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                
                Spacer()
                
                // Progression
                VStack(alignment: .leading, spacing: 6) {
                    // Texte de progression
                    Text("progression \(Int(progress * 100))%")
                        .font(.system(size: 10, weight: .medium))
                        .foregroundStyle(.white.opacity(0.9))
                    
                    // Barre de progression
                    ProgressView(value: progress)
                        .progressViewStyle(LinearProgressViewStyle())
                        .scaleEffect(x: 1, y: 0.8, anchor: .center)
                        .accentColor(.orange)
                        .background(Color.white.opacity(0.3))
                        .cornerRadius(2)
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 12)
            .padding(.bottom, 16)
        }
        .background {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.customDarkGreen)
        }
        .frame(width: 150, height: 140)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    CardExerciceView(exercice: ExoDatas.swiftBasics)
}
