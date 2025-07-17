//
//  CarouselCustomCourse.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct CarouselCustomCourse: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Cours :")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.primary)
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
                .padding(.horizontal)
                .padding(.vertical, 2)
            }
            .scrollTargetBehavior(.viewAligned)
            .scrollBounceBehavior(.basedOnSize)
        }
        .accessibilityElement(children: .contain)
        .accessibilityLabel("Section des cours")
    }
}

#Preview {
    NavigationStack {
        ZStack {
            Color.customBeige.ignoresSafeArea()
            CarouselCustomCourse()
        }
    }
}
