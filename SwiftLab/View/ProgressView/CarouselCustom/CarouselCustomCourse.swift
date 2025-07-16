//
//  CarouselCustom.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct CarouselCustomCourse: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Cours :")
                .font(.title2)
                .bold()
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 16){
                    ForEach(Course.allCourses){ course in
                        NavigationLink {
                            CourseConsultationView(course: course)
                        } label: {
                            CourseCard(course: course, progress: 0.45)
                        }
                    }
                }
            }
            .padding(.leading)
        }
    }
}

#Preview {
    NavigationStack {
        CarouselCustomCourse()
    }
}
