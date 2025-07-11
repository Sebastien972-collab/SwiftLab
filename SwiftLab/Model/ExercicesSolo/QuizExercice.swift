//
//  Exercice.swift
//  SwiftLab
//
//  Created by cyrilH on 08/07/2025.
//

import Foundation

struct QuizExercice: Hashable {
    var question: String
    var choices : [String]
    var goodAnswer: String
    var validAnswer: Bool 
}
