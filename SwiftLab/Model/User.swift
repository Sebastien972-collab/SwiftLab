//
//  User.swift
//  SwiftLab
//
//  Created by Sébastien Daguin on 07/07/2025.
//

import Foundation


final class User: Identifiable, Equatable {
    
    let id = UUID()
    var username: String 
    var password: String
    var imageUrl: URL?
    var coursesInProgress: [Course] = []
    var exoInProgress: [Exercices] = []
    

    
    
    static func == (lhs: User, rhs: User) -> Bool {
        lhs.username == rhs.username && lhs.imageUrl == rhs.imageUrl
    }
    
    //MARK: - Add functions
    func addExoInProgress(_ course: Exercices) {
        guard exoInProgress.contains(where: { $0 == course }) else { return }
       
    }
    
    func removeExoInProgresse(_ exercice: Exercices) {
        guard exoInProgress.contains(exercice) else { return }
    }
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    static var guest: User {
        let guest = User(username: "Invité", password: "")
        guest.imageUrl = URL(string: "https://images.pexels.com/photos/1334945/pexels-photo-1334945.jpeg")!
        return guest
    }
    static var preview: User {
        let guest = User(username: "CertifiedLoverDev", password: "")
        guest.imageUrl = URL(string: "https://images.pexels.com/photos/1334945/pexels-photo-1334945.jpeg")!
        return guest
    }
}
