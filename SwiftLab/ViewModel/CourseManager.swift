//
//  ConsultationCoursViewModel.swift
//  SwiftLab
//
//  Created by Dembo on 10/07/2025.
//

import Foundation

@Observable
class CourseManager {
    var allCourses: [Course] = []
    var course: Course = Course.allCourses[0]
    var userManager: UserManager = .init()
    var coursInLaunch: Bool = false
    var workInProgress: Bool = false
    
    init() {
        loadCourses()
    }

    func loadCourses() {
        allCourses = Course.allCourses
    }
    
    func launchCourse(_ course: Course) {
        workInProgress = true
        self.course = course
        userManager.addCourseInProgress(course)
        coursInLaunch = true
        workInProgress = false
    }
    func updateSectionIsRead(_ section: SectionOfCourses) {
        guard  course.section.contains(section), let index = course.section.firstIndex(of: section) else { return }
        self.course.section[index].isRead = true
        
    }
    func selectCourse(by id: UUID) {
        guard let course = allCourses.first(where: { $0.id == id }) else { return }
        self.course = course
    }

    func progress(for course: Course) -> Double {
        guard let index = allCourses.firstIndex(where: { $0.id == course.id }) else {
            return 0.0
        }
        return Double(index + 1) / Double(allCourses.count)
    }
}

