//
//  UserManager.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import Foundation

@Observable
class UserManager {
    var currentUser: User = .preview
    var isConnected: Bool = false
    var isWorking: Bool = false
    var isEditing: Bool = false

    // MARK: - Authentification
    func login(username: String, password: String) throws {
        let newUser = User(username: username, password: password)
        
        guard User.userDatabase.contains(newUser) else {
            throw ConnectionError.usernameNotFound
        }

        for user in User.userDatabase {
            if user.username == newUser.username {
                if user.password == newUser.password {
                    self.currentUser = user
                    self.isConnected = true
                    print("User \(user.username) is logged in")
                    return
                } else {
                    throw ConnectionError.wrongPassword
                }
            }
        }
        
        throw ConnectionError.unknownError
    }

    
    func loginInGuestMode() {
        currentUser = .guest
        isConnected = true
        isWorking = false
        isEditing = false
        print("User is in guest mode")
    }

    
    func logout() {
        isConnected = false
        currentUser = .guest
    }
    
    func register(username: String, password: String) {
        currentUser = User(username: username, password: password)
        isConnected = true
    }
    
    // MARK: - Profil
    func updateProfile(username: String? = nil, imageUrl: URL? = nil) {
        if let username = username {
            currentUser.username = username
        }
        if let imageUrl = imageUrl {
            currentUser.imageUrl = imageUrl
        }
    }
    
    //MARK: - Courses
    
    func updateCourse(with course: Course) {
        guard self.currentUser.coursesInProgress.contains(course), let index = self.currentUser.coursesInProgress.firstIndex(of: course) else { return }
        self.currentUser.coursesInProgress[index] = course
    }
    
    // MARK: - Exercices
    func addExerciceInProgress(_ exercice: Exercices) {
        guard !currentUser.exoInProgress.contains(exercice) else {return}
        currentUser.addExoInProgress(exercice)
    }
    
    func removeExerciceInProgress(_ exercice: Exercices) {
        guard currentUser.exoInProgress.contains(exercice) else {return}
        currentUser.removeExoInProgresse(exercice)
    }
    
    func hasExerciceInProgress(_ exercice: Exercices) -> Bool {
         currentUser.exoInProgress.contains(where: { $0 == exercice })
    }
    
    // MARK: - Cours
    func addCourseInProgress(_ course: Course) {
        if !currentUser.coursesInProgress.contains(where: { $0 == course }) {
            currentUser.coursesInProgress.append(course)
        }
    }
    
    func removeCourseInProgress(_ course: Course) {
        if let index = currentUser.coursesInProgress.firstIndex(where: { $0 == course }) {
            currentUser.coursesInProgress.remove(at: index)
        }
    }
    
    func hasCourseInProgress(_ course: Course) -> Bool {
         currentUser.coursesInProgress.contains(where: { $0 == course })
    }

}
