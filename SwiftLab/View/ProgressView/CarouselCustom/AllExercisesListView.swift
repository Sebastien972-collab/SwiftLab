//
//  AllExercisesListView.swift
//  SwiftLab
//
//  Created by Thibault on 18/07/2025.
//

//
//  AllExercisesListView.swift
//  SwiftLab
//
//  Created by Thibault on 18/07/2025.
//

import SwiftUI

struct AllExercisesListView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                ForEach(Array(stride(from: 0, to: ExoDatas.allExercices.count, by: 2)), id: \.self) { index in
                    HStack(spacing: 16) {
                        let first = ExoDatas.allExercices[index]
                        ExerciseCardLink(exercice: first)

                        if index + 1 < ExoDatas.allExercices.count {
                            let second = ExoDatas.allExercices[index + 1]
                            ExerciseCardLink(exercice: second)
                        } else {
                            Spacer()
                                .frame(maxWidth: .infinity)
                        }
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 16)
        }
        .navigationTitle("Liste des exercices")
        .navigationBarTitleDisplayMode(.large)
        .background(Color.customBeige.ignoresSafeArea())
    }
}

// MARK: - Vue réutilisable pour une carte d'exercice avec navigation

struct ExerciseCardLink: View {
    let exercice: Exercices

    var body: some View {
        NavigationLink {
            ExerciceSoloView(manager: ExerciceSoloManager(exercices: exercice), exercice: .constant(nil))
        } label: {
            CardExerciceView(exercice: exercice)
        }
        .buttonStyle(.plain)
        .frame(maxWidth: .infinity)
    }
}

// MARK: - Preview

#Preview {
    NavigationStack {
        ZStack {
            Color.customBeige.ignoresSafeArea()
            AllExercisesListView()
        }
    }
}
