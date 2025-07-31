//
//  ExercicesCoursesManager.swift
//  SwiftLab
//
//  Created by Dembo on 30/07/2025.
//

import Foundation

@Observable
class ExercicesCoursesManager {
    
    // MARK: - Propriétés
    
    private(set) var exercicesCourses: ExercicesCourses
    private var exercicesCoursesSaved: ExercicesCourses?
    
    var selectedAnswer: String = ""
    var exerciceFinished: Bool = false
    
    private(set) var currentQuestionIndex: Int = 0
    
    var currentQuestion: QuizCoursesExercices {
        exercicesCourses.exercice[currentQuestionIndex]
    }
    
    // MARK: - Initialisation
    
    init(exercicesCourses: ExercicesCourses) {
        self.exercicesCourses = exercicesCourses
        self.exercicesCoursesSaved = exercicesCourses // Sauvegarde initiale pour restart
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
        if currentQuestionIndex + 1 < exercicesCourses.exercice.count {
            currentQuestionIndex += 1
        } else {
            exerciceFinished = true
        }
    }
    
    /// Redémarre l'exercice à partir de la sauvegarde
    func restartExercice() {
        guard let saved = exercicesCoursesSaved else {
            print("Exercice est vide")
            return
        }
        exercicesCourses = saved
        currentQuestionIndex = 0
        selectedAnswer = ""
        exerciceFinished = false
    }
}
