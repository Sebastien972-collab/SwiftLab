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
                // Grouper les exercices par paires (by: 2)
                ForEach(Array(stride(from: 0, to: ExoDatas.allExercices.count, by: 2)), id: \.self) { index in
                    HStack(spacing: 16) {
                        // Premier exercice de la paire
                        NavigationLink {
                            ExerciceSoloView(manager: ExerciceSoloManager(exercices: ExoDatas.allExercices[index]))
                        } label: {
                            CardExerciceView(exercice: ExoDatas.allExercices[index])
                        }
                        .buttonStyle(.plain)
                        .frame(maxWidth: .infinity)
                        
                        // Deuxième exercice de la paire
                        if index + 1 < ExoDatas.allExercices.count {
                            NavigationLink {
                                ExerciceSoloView(manager: ExerciceSoloManager(exercices: ExoDatas.allExercices[index + 1]))
                            } label: {
                                CardExerciceView(exercice: ExoDatas.allExercices[index + 1])
                            }
                            .buttonStyle(.plain)
                            .frame(maxWidth: .infinity)
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

#Preview {
    NavigationStack {
        ZStack {
            Color.customBeige.ignoresSafeArea()
            AllExercisesListView()
        }
    }
}
