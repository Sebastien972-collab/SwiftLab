//
//  LevelModel.swift
//  SwiftLab
//
//  Created by Dembo on 25/07/2025.
//

import Foundation
import SwiftUI

struct Level : Identifiable, Equatable {
    let id: Int
    let questions : [QuizExercice]
    static func ==(lhs: Level, rhs: Level)-> Bool {lhs.id == rhs.id}
}

struct Question {
    let question: String
    let possibleAnswers: [String]
    let answerIndex: Int
    
    
    func tranformeQE() -> QuizExercice {
        QuizExercice(question: question, choices: possibleAnswers, goodAnswer: possibleAnswers[answerIndex], correction: "", validAnswer: false)
    }
}
