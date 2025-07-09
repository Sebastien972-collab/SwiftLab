//
//  CourseCard.swift
//  SwiftLab
//
//  Created by Dembo on 09/07/2025.
//

import SwiftUI

struct CourseCard: View {
    let course: Course
    var progress: Double
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Image(systemName: "book.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(8)
                Text(course.title)
                    .lineLimit(1)
                    .bold()
                    .padding(.horizontal, 5)
            }
            VStack(alignment: .leading) {
                Text("Progression: \(Int(progress * 100))%")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                ProgressView(value: progress)
            }
            .padding(7)
                
        }
        .background {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.customBlue)
        }
        .frame(width: 150, height: 150)
        .foregroundStyle(.black)
        
    }
}

#Preview {
    VStack {
        CourseCard(course: .allCourses[0], progress: 0.3)
//        CourseCard(course: .allCourses[0], progress: 0.7)
    }
}
