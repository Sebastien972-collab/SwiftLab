//
//  Quiz.swift
//  SwiftLab
//
//  Created by Sébastien Daguin on 07/07/2025.
//

import Foundation

struct Quiz {
    var text: String
    var answer: String
    var choices: [String]
    
     func tranform() -> QuizExercice {
        QuizExercice(question: text, choices: choices, goodAnswer: answer, correction: "", validAnswer: false)
    }
    
}
