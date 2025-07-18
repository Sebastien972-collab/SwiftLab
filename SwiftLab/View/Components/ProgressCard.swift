//
//  ProgressCard.swift
//  SwiftLab
//
//  Created by Thibault on 08/07/2025.
//


import SwiftUI

struct ProgressCard: View {
    let title: String
    let progress: Double // 0.0 à 1.0
    let backgroundColor: Color
    let iconName: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // SF symbol
            Image(systemName: iconName)
                .font(.title2)
                .fontWeight(.medium)
                .foregroundStyle(.white)
            
            // Titre
            if !title.isEmpty {
                Text(title)
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
            
            // Texte de progression
            Text("progression \(Int(progress * 100))%")
                .font(.caption)
                .foregroundStyle(.white)
            
            // Barre de progression
            ProgressView(value: progress)
                .tint(.orange)
                .scaleEffect(x: 1, y: 1.5)
        }
        .padding(16)
        .frame(width: 140, height: 120)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    ProgressCard(
        title: "Algorithme - 1",
        progress: 0.75,
        backgroundColor: .customBlue,
        iconName: "book.fill"
    )
}
