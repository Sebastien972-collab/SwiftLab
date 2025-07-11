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
        NavigationStack {
            ZStack {
                Color.background.ignoresSafeArea()
                ScrollView {
                    VStack {
                        CourseVideo()
                        
                    }
                    .padding()
                }
                
            }
            
        }
    }
}

#Preview {
    CourseConsultationView(course: .allCourses[0])
}
