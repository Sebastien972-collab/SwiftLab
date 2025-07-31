//
//  AllCoursesListView.swift
//  SwiftLab
//
//  Created by Thibault on 18/07/2025.
//

import SwiftUI

struct AllCoursesListView: View {
    @State private var courses = Course.allCourses

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                ForEach(Array(stride(from: 0, to: courses.count, by: 2)), id: \.self) { index in
                    HStack(spacing: 16) {
                        // Premier élément
                        NavigationLink {
                            CourseConsultationView(course: courses[index])
                        } label: {
                            CourseCard(course: courses[index])
                        }
                        .buttonStyle(.plain)
                        .frame(maxWidth: .infinity)
                        
                        // Deuxième élément si présent
                        if index + 1 < courses.count {
                            NavigationLink {
                                CourseConsultationView(course: courses[index + 1])
                            } label: {
                                CourseCard(course: courses[index + 1])
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
        .navigationTitle("Liste des cours")
        .navigationBarTitleDisplayMode(.large)
        .background(Color.customBeige.ignoresSafeArea())
    }
}

#Preview {
    NavigationStack {
        ZStack {
            Color.customBeige.ignoresSafeArea()
            AllCoursesListView()
        }
    }
}
