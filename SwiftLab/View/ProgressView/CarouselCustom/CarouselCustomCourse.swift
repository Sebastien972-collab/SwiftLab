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
                        //                        ProgressCard(
                        //                            title: course.title,
                        //                            progress: 0.75,
                        //                            backgroundColor: .blue.opacity(0.8),
                        //                            iconName: "book.fill"
                        //                        )
                        NavigationLink {
                            Text(course.title)
                        } label: {
                            CourseCard(course: course, progress: 0.45)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CarouselCustomCourse()
}
