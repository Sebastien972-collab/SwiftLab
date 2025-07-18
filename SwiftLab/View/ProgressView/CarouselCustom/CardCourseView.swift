//
//  CardCourseView.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct CardCourseView: View {
    var body: some View {
        VStack(alignment: .leading) {
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
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(Course.allCourses) { course in
                        ProgressCard(
                            title: course.title.replacingOccurrences(of: "Cours", with: "Exercice"),
                            progress: generateProgress(for: course),
                            backgroundColor: .customDarkGreen,
                            iconName: "laptopcomputer"
                        )
                    }
                }
                
            }
        }
    }
}

// Utilise l'ID pour avoir la barre de progression (à changer)
private func generateProgress(for course: Course) -> Double {
    let hash = course.id.hashValue
    return Double(abs(hash) % 101) / 100.0
}

#Preview {
    NavigationStack {
        ZStack {
            Color.customBeige.ignoresSafeArea()
            CardCourseView()
        }
    }
}

