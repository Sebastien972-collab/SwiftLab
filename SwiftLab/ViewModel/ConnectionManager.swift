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
    
    
    
    
    var isConnected: Bool = false
    var isWorking: Bool = false
    var isEditing: Bool = false
    
}
