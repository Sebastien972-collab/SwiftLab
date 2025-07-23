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
        guard !exoInProgress.contains(where: { $0 == course }) else { return }
        exoInProgress.append(course)
       
    }
    
    func removeExoInProgresse(_ exercice: Exercices) {
        guard exoInProgress.contains(exercice), let index = exoInProgress.firstIndex(of: exercice) else { return }
        exoInProgress.remove(at: index)
    }
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    convenience init(username: String, password: String, imageUrl: URL) {
        self.init(username: username, password: password)
        self.imageUrl = imageUrl
    }
    
}

extension User {
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
    
    
    
    static var userDatabase: [User] {
        let users = [
            User(username: "Zak", password: "", imageUrl: URL(string: "https://images.pexels.com/photos/29881401/pexels-photo-29881401.jpeg")!),
            User(username: "Bertrand", password: "", imageUrl:  URL(string: "https://images.pexels.com/photos/7878233/pexels-photo-7878233.jpeg")!),
            User(username: "Elodie", password: "", imageUrl: URL(string: "https://images.pexels.com/photos/1334945/pexels-photo-1334945.jpeg")!),
            User(username: "Mélodie", password: "", imageUrl: URL(string: "https://images.pexels.com/photos/10392311/pexels-photo-10392311.jpeg")!),
            User(username: "Asia", password: "", imageUrl: URL(string: "https://images.pexels.com/photos/21134688/pexels-photo-21134688.jpeg")!),
            User(username: "Marthe", password: "",imageUrl: URL(string: "https://images.pexels.com/photos/3436831/pexels-photo-3436831.jpeg")!),
            User(username: "Robert", password: "",imageUrl: URL(string: "https://images.pexels.com/photos/28578372/pexels-photo-28578372.jpeg")!),
            User(username: "Vanessa", password: "",imageUrl: URL(string: "https://images.pexels.com/photos/18316138/pexels-photo-18316138.jpeg")!)
        ]
    
        return users
    }


}
