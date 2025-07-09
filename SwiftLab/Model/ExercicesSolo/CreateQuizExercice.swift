//
//  CreateQuizExercice.swift
//  SwiftLab
//
//  Created by cyrilH on 09/07/2025.
//

import Foundation
let exempleExercice = ExercicesSolo(
    nameOfExercices: "Culture Générale",
    exerciceFinished: false,
    exercice: [
        QuizExercice(
            question: "Quelle est la capitale de la France ?",
            answers: ["Berlin", "Madrid", "Paris", "Rome"],
            goodAnswer: 2,
            validAnswer: false
        ),
        QuizExercice(
            question: "Combien de continents existe-t-il ?",
            answers: ["5", "6", "7", "8"],
            goodAnswer: 2,
            validAnswer: false
        )
    ]
)
