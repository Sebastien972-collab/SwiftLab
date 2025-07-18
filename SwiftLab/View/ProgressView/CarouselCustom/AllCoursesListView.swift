//
//  AllCoursesListView.swift
//  SwiftLab
//
//  Created by Thibault on 18/07/2025.
//

import SwiftUI

struct AllCoursesListView: View {
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                // Grouper les cours par paires (by: 2)
                ForEach(Array(stride(from: 0, to: Course.allCourses.count, by: 2)), id: \.self) { index in
                    HStack(spacing: 16) {
                        // Premier cours de la paire
                        NavigationLink {
                            CourseConsultationView(course: Course.allCourses[index])
                        } label: {
                            CourseCard(course: Course.allCourses[index], progress: 0.45)
                        }
                        .buttonStyle(.plain)
                        .frame(maxWidth: .infinity)
                        
                        // Deuxième cours de la paire
                        if index + 1 < Course.allCourses.count {
                            NavigationLink {
                                CourseConsultationView(course: Course.allCourses[index + 1])
                            } label: {
                                CourseCard(course: Course.allCourses[index + 1], progress: 0.45)
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
