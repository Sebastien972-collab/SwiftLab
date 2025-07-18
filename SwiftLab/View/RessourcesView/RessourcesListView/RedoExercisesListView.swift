//
//  RedoExercisesListView.swift
//  SwiftLab
//
//  Created by Thibault on 18/07/2025.
//

import SwiftUI

struct RedoExercisesListView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Header section with navigation
            HStack {
                Text("Revoir les exercices")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Spacer()
                
                NavigationLink(destination: AllExercisesListView()) {
                    Text("Voir tous")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal, 20)
            
            // Horizontal scrollable carousel
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(ExoDatas.allExercices, id: \.self) { exercice in
                        NavigationLink {
                            ExerciceSoloView(manager: ExerciceSoloManager(exercices: exercice))
                        } label: {
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 8)
            }
            .scrollTargetBehavior(.viewAligned)
            .scrollBounceBehavior(.basedOnSize)
        }
        .accessibilityElement(children: .contain)
        .accessibilityLabel("Section des exercices à revoir")
    }
}

#Preview {
    NavigationStack {
        ZStack {
            Color.customBeige.ignoresSafeArea()
            RedoExercisesListView()
        }
    }
}
