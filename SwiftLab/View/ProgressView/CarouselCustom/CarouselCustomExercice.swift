//
//  CarouselCustomExercice.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct CarouselCustomExercice: View {
    @State private var exercices = ExoDatas.allExercices
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Exercices")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Spacer()
                NavigationLink(destination: AllExercisesListView()) {
                    Text("Voir tous")
                        .font(.footnote)
                }
            }
            .padding(.horizontal,20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(exercices, id: \.self) { exercice in
                        NavigationLink {
                            ExerciceSoloView(manager: ExerciceSoloManager(exercices: exercice))
                        } label: {
                            CardExerciceView(exercice: exercice)
                        }
                        .buttonStyle(.plain)
                        .scaleEffect(1.0)
                        .animation(.easeInOut(duration: 0.1), value: UUID())
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 2)
            }
            
            .scrollTargetBehavior(.viewAligned)
            .scrollBounceBehavior(.basedOnSize)
        }
        .accessibilityElement(children: .contain)
        .accessibilityLabel("Section des exercices")
    }
}

#Preview {
    NavigationStack {
        ZStack {
            Color.customBeige.ignoresSafeArea()
            CarouselCustomExercice()
        }
    }
}
