//
//  CarouselCustomCourse.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct CarouselCustomCourse: View {
    let title: String
    
    init(title: String = "Cours") {
        self.title = title
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            HStack {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Spacer()
                NavigationLink(destination: AllCoursesListView()) {
                    Text("Voir tous")
                        .font(.caption)
                }
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                    ForEach(Course.allCourses) { course in
                        NavigationLink {
                            CourseConsultationView(course: course)
                        } label: {
                            CourseCard(course: course, progress: 0.45)
                        }
                        .buttonStyle(.plain)
                        .scaleEffect(1.0)
                        .animation(.easeInOut(duration: 0.1), value: UUID())
                    }
                }
                .padding(.vertical, 2)
            }
            .contentMargins(.horizontal, 16)
            .scrollTargetBehavior(.viewAligned)
            .scrollBounceBehavior(.basedOnSize)
        }
        .accessibilityElement(children: .contain)
        .accessibilityLabel("Section des \(title.lowercased())")
    }
}

// Exemples d'utilisation :
// CarouselCustomCourse() // Utilise "Cours" par défaut
// CarouselCustomCourse(title: "Mes Formations")
// CarouselCustomCourse(title: "Recommandations")

#Preview {
    NavigationStack {
        ZStack {
            Color.customBeige.ignoresSafeArea()
            VStack {
                CarouselCustomCourse()
            }
        }
    }
}
