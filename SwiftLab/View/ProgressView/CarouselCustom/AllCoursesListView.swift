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
//        ScrollView(showsIndicators: false) {
//            VStack(spacing: 20) {
//                ForEach($courses) { course in
//                    HStack(spacing: 16) {
//                        NavigationLink {
//                            CourseConsultationView(course: course)
//                        } label: {
//                            CourseCard(course: course)
//                        }
//                        .buttonStyle(.plain)
//                        .frame(maxWidth: .infinity)
//                        if index + 1 < courses.count {
//                            NavigationLink {
//                                CourseConsultationView(course: course)
//                            } label: {
//                                CourseCard(course: course)
//                            }
//                            .buttonStyle(.plain)
//                            .frame(maxWidth: .infinity)
//                        } else {
//                            Spacer()
//                                .frame(maxWidth: .infinity)
//                        }
//                    }
//                }
//            }
//            .padding(.horizontal, 20)
//            .padding(.vertical, 16)
//        }
//        .navigationTitle("Liste des cours")
//        .navigationBarTitleDisplayMode(.large)
//        .background(Color.customBeige.ignoresSafeArea())
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
