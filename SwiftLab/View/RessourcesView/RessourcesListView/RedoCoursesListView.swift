//
//  RedoCoursesListView.swift
//  SwiftLab
//
//  Created by Thibault on 18/07/2025.
//

import SwiftUI

struct RedoCoursesListView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Revoir les cours")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Spacer()
                NavigationLink(destination: AllCoursesListView()) {
                    Text("Voir tous")
                        .font(.caption)
                }
            }
            .padding(.horizontal, 20)
            
            // Horizontal scrollable carousel
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(Course.allCourses) { course in
                        NavigationLink(destination: CourseConsultationView(course: course)) {
                            RessourcesCoursesCard(course: course)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 20)
                
            }
            .scrollTargetBehavior(.viewAligned)
            
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
            RedoCoursesListView()
        }
    }
}

