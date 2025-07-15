//
//  ConsultationCoursViewModel.swift
//  SwiftLab
//
//  Created by Dembo on 10/07/2025.
//

import Foundation
import SwiftUI

@Observable
class CourseConsultationViewModel {
    var courses: [Course] = []
    var selectedCourse: Course?

    init() {
        loadCourses()
    }

    func loadCourses() {
        courses = Course.allCourses
    }

    func selectCourse(by id: UUID) {
        selectedCourse = courses.first(where: { $0.id == id })
    }

    func progress(for course: Course) -> Double {
        guard let index = courses.firstIndex(where: { $0.id == course.id }) else {
            return 0.0
        }
        return Double(index + 1) / Double(courses.count)
    }
}

