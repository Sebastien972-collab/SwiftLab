//
//  QuizManager.swift
//  SwiftLab
//
//  Created by cyrilH on 09/07/2025.
//

import Foundation


@Observable
class ExerciceSoloManager {
    
    var exercices: Exercices = ExoDatas.swiftBasics
    var selectedAnswer: String = ""
    var exerciceFinished: Bool = false
    var currentQuestiion: QuizExercice {
        exercices.exercice[0]
    }
    

    init(exercices: Exercices) {
        self.exercices = exercices
    }
    
    
    
    
    private(set) var currentQuestionIndex: Int = 0
    
    /// Vérifie si la réponse donnée est correcte et met à jour `validAnswer`
    func answerCurrentQuestion(with index: Int) {
        
    }
    
    ///Passe à la question suivante
    func goToNextQuestion() {
        guard exercices.exercice.isNotEmpty else {
            self.exerciceFinished = true
            return
        }
        guard selectedAnswer == currentQuestiion.goodAnswer  else { return }
        guard exercices.exercice.count != 1 else {
            self.exerciceFinished = true
            return
        }
        exercices.exercice.remove(at: 0)
    }
    
    // Redémarre l'exercice
    func restartExercice() {
    }
}

