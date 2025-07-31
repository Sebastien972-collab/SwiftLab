//
//  RedoExercisesListView.swift
//  SwiftLab
//
//  Created by Thibault on 18/07/2025.
//

import SwiftUI

struct RedoExercisesListView: View {
    @State private var exercices = ExoDatas.allExercices
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Header section with navigation
            HStack {
                Text("Refaire les exercices")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Spacer()
                NavigationLink(destination: AllExercisesListView()) {
                    Text("Voir tous")
                        .font(.caption)
                }
            }
            .padding(.horizontal, 20)
            // Horizontal scrollable carousel
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 16) {
                    ForEach(exercices, id: \.self) { exercice in
                        NavigationLink {
                            ExerciceSoloView(manager: ExerciceSoloManager(exercices: exercice), exercice: .constant(nil))
                        } label: {
                            RessourcesExercicesCard(exercice: exercice)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 20)
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
