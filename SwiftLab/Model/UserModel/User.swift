//
//  User.swift
//  SwiftLab
//
//  Created by Sébastien Daguin on 07/07/2025.
//

import Foundation


final class User: Identifiable {
    
    let id = UUID()
    var username: String
    var password: String
    var imageUrl: URL?
    var coursesInProgress: [Course] = []
    var exoInProgress: [Exercices] = []
    var coursProgressPercent: Double {
        guard !coursesInProgress.isEmpty else { return 0.0 }
        var total = 0.0
        for course in coursesInProgress {
            total += course.progressPercent
        }
        
        return total / Double(Course.allCourses.count)
    }

    //MARK: - Initializer
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    convenience init(username: String, password: String, imageUrl: URL) {
        self.init(username: username, password: password)
        self.imageUrl = imageUrl
    }
    
    //MARK: - Add functions
    func addExoInProgress(_ course: Exercices) {
        guard !exoInProgress.contains(where: { $0 == course }) else { return }
        exoInProgress.append(course)
       
    }
    
    func removeExoInProgresse(_ exercice: Exercices) {
        guard exoInProgress.contains(exercice), let index = exoInProgress.firstIndex(of: exercice) else { return }
        exoInProgress.remove(at: index)
    }
    
    //MARK: - Other Functions
}

