//
//  ConnectionManager.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import Foundation

@Observable
class ConnectionManager {
    
    var userManager: UserManager = .init()
    var username: String = ""
    var password: String = ""
    var email: String = ""
    
    var error: ConnectionError?
    var showError: Bool = false
    
    var isConnected: Bool = false
    var isWorking: Bool = false
    var isEditing: Bool = false
    
    
    func logInUser()  {
        guard checkField() else { return }
        userManager.login(username: username, password: password)
    }
    
    func signUp() {
        guard checkField() else { return }
        userManager.register(username: username, password: password)
    }
    
    
    func checkField() -> Bool {
        guard !username.isEmpty, !password.isEmpty else {
            self.error = .emptyTextField
            self.showError = true
            return false
        }
        return true
    }
    
}
