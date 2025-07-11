//
//  CourseConsultationView.swift
//  SwiftLab
//
//  Created by Dembo on 10/07/2025.
//

import SwiftUI

struct CourseConsultationView: View {
    let course: Course
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading) {
                    Text(course.text)
                        .font(.body)
                        .foregroundColor(.secondary)
                    CourseVideo()
                    Text(course.exemple)
                    Text(course.explication)
                    ForEach(course.section) { section in
                        VStack(alignment: .leading) {
                            Text(section.title)
                                .font(.title2)
                                .bold()
                            if let text = section.text {
                                Text(text)
                            }
                            
                            if let image = section.imageName {
                                Image(image)
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .frame(maxWidth: .infinity, maxHeight: 300)
                                    .clipped()
                                    
                            }
                        }
                        .padding(.horizontal, 3)
                        Divider()
                    }
                    
                }
                .padding()
                .navigationTitle(course.title)
                .navigationBarTitleDisplayMode(.inline)
                
            }
            
        }
    }
}

#Preview {
    NavigationStack {
        CourseConsultationView(course: .allCourses[0])
    }
}
