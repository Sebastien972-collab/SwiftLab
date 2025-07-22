//
//  QuizManager.swift
//  SwiftLab
//
//  Created by cyrilH on 09/07/2025.
//

import Foundation

@Observable
class ExerciceSoloManager {
    
    // MARK: - Propriétés
    
    private(set) var exercices: Exercices
    private var exercicesSaved: Exercices?
    
    var selectedAnswer: String = ""
    var exerciceFinished: Bool = false
    
    private(set) var currentQuestionIndex: Int = 0
    
    var currentQuestion: QuizExercice {
        exercices.exercice[currentQuestionIndex]
    }
    
    // MARK: - Initialisation
    
    init(exercices: Exercices) {
        self.exercices = exercices
        self.exercicesSaved = exercices // Sauvegarde initiale pour restart
    }
    
    // MARK: - Actions
    
    /// Vérifie si la réponse donnée est correcte et avance à la question suivante
    func answerCurrentQuestion(with answer: String) {
        selectedAnswer = answer
        
        // Vérifie la réponse
        if answer == currentQuestion.goodAnswer {
            goToNextQuestion()
        } else {
            // Optionnel : gérer les mauvaises réponses ou feedback
        }
    }
    
    /// Passe à la question suivante
    func goToNextQuestion() {
        if currentQuestionIndex + 1 < exercices.exercice.count {
            currentQuestionIndex += 1
        } else {
            exerciceFinished = true
        }
    }
    
    /// Redémarre l'exercice à partir de la sauvegarde
    func restartExercice() {
        guard let saved = exercicesSaved else {
            print("Exercice est vide")
            return
        }
        exercices = saved
        currentQuestionIndex = 0
        selectedAnswer = ""
        exerciceFinished = false
    }
}
