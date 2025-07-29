//
//  ConsultationCoursViewModel.swift
//  SwiftLab
//
//  Created by Dembo on 10/07/2025.
//

import Foundation

@Observable
class CourseManager {
    var allCourses: [Course] = Course.allCourses
    var userManager: UserManager = .init()
    
    var coursesInProgress: [Course] = [Course.allCourses[0]]
    var coursesFinished: [Course] {
        coursesInProgress.filter { $0.progressPercent == 1.0 }
    }
    
    var coursInLaunch: Bool = false
    var workInProgress: Bool = false
    
    var coursProgressPercent: Double {
        calculateFinshPrecent()
    }
    
    convenience init(userManager: UserManager) {
        self.init()
        self.userManager = userManager
        

    }
    @MainActor
    func launchCourse(_ course: Course) {
        workInProgress = true
        coursInLaunch = true
        addCourseInProgress(course)
        workInProgress = false
    }
    
   
    func addCourseInProgress(_ course: Course) {
        if !coursesInProgress.contains(where: { $0 == course }) {
            coursesInProgress.append(course)
        }
    }
    
    func removeCourseInProgress(_ course: Course) {
        if let index = coursesInProgress.firstIndex(where: { $0 == course }) {
            coursesInProgress.remove(at: index)
        }
    }
    
    func hasCourseInProgress(_ course: Course) -> Bool {
         coursesInProgress.contains(where: { $0 == course })
    }
    
    func updateSectionIsRead(with course: Course, and sectionIndex: Int )  {
        guard let courseIndex = coursesInProgress.firstIndex(of: course) else { return }
        self.coursesInProgress[courseIndex].section[sectionIndex].isRead = true
    }
    func updateSectionIsRead(with courseIndex: Int, and sectionIndex: Int )  {
        self.coursesInProgress[courseIndex].section[sectionIndex].isRead = true
    }
    func updateCourse(with course: Course) {
        guard self.coursesInProgress.contains(course), let index = self.coursesInProgress.firstIndex(of: course) else { return }
        self.coursesInProgress[index] = course
    }
    
    func selectCourse(by id: UUID) {
//        guard let course = allCourses.first(where: { $0.id == id }) else { return }
//        self.course = course
    }
    
//    func refreshCourse() {
//        coursesFinished
//    }

    func progress(for course: Course) -> Double {
        guard let index = allCourses.firstIndex(where: { $0.id == course.id }) else {
            return 0.0
        }
        return Double(index + 1) / Double(allCourses.count)
    }
    
    private func calculateFinshPrecent() -> Double {
        guard !coursesInProgress.isEmpty else { return 0.0 }
        var total = 0.0
        for course in coursesInProgress {
            total += course.progressPercent
        }
        return total / Double(Course.allCourses.count)
    }
    
    func refreshCourse() {
        self.coursesInProgress = coursesInProgress.filter { progress(for: $0) != 1.0 }
    }
}

