//
//  QuizCoursesExercices.swift
//  SwiftLab
//
//  Created by Dembo on 30/07/2025.
//

import Foundation

struct QuizCoursesExercices: Hashable {
    var question: String
    var choices : [String]
    var goodAnswer: String
    var correction: String
    var validAnswer: Bool
}
