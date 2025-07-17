//
//  ProgressionCercle.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct ProgressionCercle: View {
    let progress: Double
    
    private var circleSize: CGFloat {
        min(UIScreen.main.bounds.width * 0.4, 160)
    }
    
    private let strokeWidth: CGFloat = 12
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: strokeWidth)
                .foregroundColor(.white.opacity(0.2))
            
            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(
                    style: StrokeStyle(
                        lineWidth: strokeWidth,
                        lineCap: .round,
                        lineJoin: .round
                    )
                )
                .foregroundStyle(
                    LinearGradient(
                        colors: [.orange, .orange.opacity(0.7)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .rotationEffect(.degrees(-90))
                .animation(.spring(response: 0.8, dampingFraction: 0.8), value: progress)
            
            VStack(spacing: 4) {
                Text("Progrès")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                
                Text("\(Int(progress * 100))%")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
                    .contentTransition(.numericText())
            }
        }
        .frame(width: circleSize, height: circleSize)
        .padding(.vertical, 8) // Réduit de 16 à 8
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Progression du cours")
        .accessibilityValue("\(Int(progress * 100)) pourcent")
        .accessibilityHint("Votre progression actuelle dans le parcours")
    }
}

#Preview {
    ZStack {
        Color.customBeige.ignoresSafeArea()
        ProgressionCercle(progress: 0.62)
    }
}
