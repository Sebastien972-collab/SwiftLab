//
//  ProgressionCercle.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct ProgressionCercle: View {
    var progress: Double // valeur entre 0 et 1

    var body: some View {
        
        ZStack {
            // Cercle gris (fond)
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.3)
                .foregroundColor(.orange)

            // Cercle coloré (progression)
            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .foregroundColor(.orange)
                .rotationEffect(.degrees(-90))

            // Texte au centre
            VStack(spacing: 4) {
                Text("Score")
                    .font(.title)
                    .bold()
                Text("\(Int(progress * 100))%")
                    .font(.title2)
                    .bold()
            }
        }
        .frame(width: 160, height: 160)
    }
}

#Preview {
    ProgressionCercle(progress: 0.62)
}
