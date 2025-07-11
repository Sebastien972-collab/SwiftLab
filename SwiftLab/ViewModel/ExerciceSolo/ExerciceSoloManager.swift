//
//  QuizManager.swift
//  SwiftLab
//
//  Created by cyrilH on 09/07/2025.
//

import Foundation


@Observable
class ExerciceSoloManager {
    
    var currentExercice: ExercicesSolo
    var selectedAnswer: String = ""
    
    
    
    
    
    
    private(set) var currentQuestionIndex: Int = 0
    
    init(exercice: ExercicesSolo) {
        self.currentExercice = exercice
    }
    var currentQuestion: QuizExercice? {
        guard currentQuestionIndex < currentExercice.exercice.count else { return nil }
        return currentExercice.exercice[currentQuestionIndex]
    }
    
    /// Vérifie si la réponse donnée est correcte et met à jour `validAnswer`
    func answerCurrentQuestion(with index: Int) {
        
    }
    
    //Passe à la question suivante
    func goToNextQuestion() {
        if currentQuestionIndex + 1 < currentExercice.exercice.count {
            currentQuestionIndex += 1
        } else {
            currentExercice.exerciceFinished = true
        }
    }
    
    // Redémarre l'exercice
    func restartExercice() {
        currentQuestionIndex = 0
        currentExercice.exerciceFinished = false
        for i in 0..<currentExercice.exercice.count {
            currentExercice.exercice[i].validAnswer = false
        }
    }
}

