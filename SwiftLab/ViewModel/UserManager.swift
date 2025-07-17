//
//  UserManager.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import Foundation

@Observable
class UserManager {
    private(set) var currentUser: User = .preview
    var isLoggedIn: Bool { currentUser != .guest }
}
