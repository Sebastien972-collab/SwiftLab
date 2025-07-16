//
//  File.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import Foundation


struct Cours: Identifiable {
    let id: UUID = UUID()
    let titre: String
    let progression: Double
    let type: CategorieCours
}

enum CategorieCours  {
    case cours1, cours2, cours3, cours4
}
//
//struct Exercice: Identifiable {
//    let id: UUID = UUID()
//    let titre: String
//    let progression: Double
//    let parentCours: CategorieCours
//}
