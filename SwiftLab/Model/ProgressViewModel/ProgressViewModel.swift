//
//  File.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import Foundation

//struct PProgressViewModel {
//    var id: UUID = UUID()
//    var name: String = ""
//    var image: String = ""
//    var titleCourse: String = ""
//    var titleExercise: String = ""
//    
//}

struct Cours: Identifiable {
    let id: UUID = UUID()
    let titre: String
    let progression: Double  
    let type: CategorieCours
}

enum CategorieCours {
    case algorithme, function, closure
}

struct Exercice: Identifiable {
    let id: UUID = UUID()
    let titre: String
    let progression: Double
    let parentCours: CategorieCours
}
