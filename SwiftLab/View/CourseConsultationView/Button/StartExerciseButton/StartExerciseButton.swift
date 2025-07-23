//
//  StartExerciseButton.swift
//  SwiftLab
//
//  Created by Dembo on 23/07/2025.
//

import SwiftUI

struct StartExerciseButton: View {
    var body: some View {
        Button(action: {
        }) {
            Text("Lancer l’exercice")
                .foregroundColor(.white)
                .font(.headline)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
                .cornerRadius(40)
        }
        .padding(.horizontal)

    }
}

#Preview {
    StartExerciseButton()
}
