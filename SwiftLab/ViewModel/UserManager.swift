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
        // Exemple simplifié, à remplacer par de la vraie logique plus tard
        let newUser = User(username: username, password: password)
        guard User.userDatabase.contains(newUser) else {
            print("User \(newUser.username) with password \(newUser.password) is not logged in")
            throw ConnectionError.usernameNotFound
        }
        for user in User.userDatabase {
            if newUser == user {
                if user.password == newUser.password {
                    self.isConnected = true
                } else {
                    throw ConnectionError.wrongPassword
                }
            }
        }
        print("User \(newUser.username) is logged in")
        self.isConnected = true
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
    
    // MARK: - Exercices
    func addExerciceInProgress(_ exercice: Exercices) {
        currentUser.addExoInProgress(exercice)
    }
    
    func removeExerciceInProgress(_ exercice: Exercices) {
        currentUser.removeExoInProgresse(exercice)
    }
    
    func hasExerciceInProgress(_ exercice: Exercices) -> Bool {
        return currentUser.exoInProgress.contains(where: { $0 == exercice })
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
        return currentUser.coursesInProgress.contains(where: { $0 == course })
    }

}
