//
//  CreateQuizExercice.swift
//  SwiftLab
//
//  Created by cyrilH on 09/07/2025.
//

import Foundation
let swiftBasics = ExercicesSolo(
    nameOfExercices: "Les Bases du Swift - 1",
    exerciceFinished: false,
    exercice: [
        QuizExercice(
            question: "Comment déclare-t-on une constante en Swift ?",
            answers: ["var", "let", "const", "static"],
            goodAnswer: 1,
            validAnswer: false
        ),
        QuizExercice(
            question: "Quel type représente un nombre entier ?",
            answers: ["String", "Int", "Double", "Bool"],
            goodAnswer: 1,
            validAnswer: false
        ),
        QuizExercice(
            question: "Comment déclarer une variable en Swift ?",
            answers: ["var", "let", "mutable", "const"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Quelle est la différence entre `let` et `var` ?",
            answers: ["`let` est pour les constantes et `var` pour les variables", "`let` est plus rapide que `var`", "`let` est pour les tableaux", "`var` ne peut pas être modifiée"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Quel type représente un nombre à virgule flottante ?",
            answers: ["Int", "Double", "Bool", "String"],
            goodAnswer: 1,
            validAnswer: false
        )
    ]
)



let functionsQuiz = ExercicesSolo(
    nameOfExercices: "Les Fonctions en Swift",
    exerciceFinished: false,
    exercice: [
        QuizExercice(
            question: "Comment déclare-t-on une fonction en Swift ?",
            answers: ["func maFonction()", "function maFonction()", "def maFonction()", "void maFonction()"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Que retourne cette fonction ?\n`func addition(a: Int, b: Int) -> Int { return a + b }`",
            answers: ["Un entier", "Un Booléen", "Une chaîne de caractères", "Un tableau"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Comment appelle-t-on une fonction en Swift ?",
            answers: ["maFonction()", "appeler(maFonction())", "func maFonction()", "exec maFonction()"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Comment déclare-t-on une fonction qui ne retourne rien en Swift ?",
            answers: ["func maFonction() {}", "func maFonction() -> Void {}", "func maFonction() -> Int {}", "func maFonction(Void) {}"],
            goodAnswer: 1,
            validAnswer: false
        ),
        QuizExercice(
            question: "Comment passons-nous des paramètres à une fonction ?",
            answers: ["En les mettant dans les parenthèses après le nom de la fonction", "En utilisant le mot-clé `parameters`", "En les définissant avant la fonction", "En les déclarant comme variables globales"],
            goodAnswer: 0,
            validAnswer: false
        )
    ]
)



let optionalsQuiz = ExercicesSolo(
    nameOfExercices: "Les Optionnels en Swift",
    exerciceFinished: false,
    exercice: [
        QuizExercice(
            question: "Que fait l'opérateur `?` dans Swift ?",
            answers: ["Il déclare un tableau", "Il transforme une variable en optionnelle", "Il vérifie une condition", "Il appelle une fonction"],
            goodAnswer: 1,
            validAnswer: false
        ),
        QuizExercice(
            question: "Quel est le type de la variable `let name: String? = nil` ?",
            answers: ["String", "String? (Optionnel)", "Nil", "Void"],
            goodAnswer: 1,
            validAnswer: false
        ),
        QuizExercice(
            question: "Que représente une variable optionnelle ?",
            answers: ["Une valeur qui peut être `nil`", "Une variable avec une valeur par défaut", "Un tableau", "Une fonction qui retourne une valeur"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Comment déballer un optionnel en Swift ?",
            answers: ["En utilisant `unwrap()`", "En utilisant `!` ou `if let`", "En utilisant `unwrap!`", "En utilisant `?`"],
            goodAnswer: 1,
            validAnswer: false
        ),
        QuizExercice(
            question: "Que fait l'opérateur `??` dans Swift ?",
            answers: ["Il vérifie si une variable est `nil`", "Il fournit une valeur par défaut si l'optionnel est `nil`", "Il permet de déballer un optionnel", "Il crée un nouveau tableau"],
            goodAnswer: 1,
            validAnswer: false
        )
    ]
)




let arraysQuiz = ExercicesSolo(
    nameOfExercices: "Les Tableaux en Swift",
    exerciceFinished: false,
    exercice: [
        QuizExercice(
            question: "Comment crée-t-on un tableau vide en Swift ?",
            answers: ["let array = []", "let array: [String] = []", "let array = ()", "let array: Array = []"],
            goodAnswer: 1,
            validAnswer: false
        ),
        QuizExercice(
            question: "Comment ajouter un élément au tableau `array` ?",
            answers: ["array.add()", "array.append(value)", "array.push(value)", "array.insert(value)"],
            goodAnswer: 1,
            validAnswer: false
        ),
        QuizExercice(
            question: "Comment accéder à un élément d'un tableau à l'index 0 ?",
            answers: ["array[0]", "array[1]", "array.first()", "array[0..1]"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Quel est le type du tableau `let array = [1, 2, 3]` ?",
            answers: ["[Int]", "[String]", "[Any]", "[Double]"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Comment modifier un élément d'un tableau ?",
            answers: ["array[0] = 4", "array[0] = '4'", "array[0] = true", "array.update(0, 4)"],
            goodAnswer: 0,
            validAnswer: false
        )
    ]
)



let structsAndClassesQuiz = ExercicesSolo(
    nameOfExercices: "Structures et Classes en Swift",
    exerciceFinished: false,
    exercice: [
        QuizExercice(
            question: "Quelle est la différence principale entre une structure et une classe en Swift ?",
            answers: ["Les classes supportent l'héritage, pas les structures", "Les structures sont plus lentes", "Les structures sont mutables par défaut", "Les classes ne peuvent pas contenir de méthodes"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Comment crée-t-on une instance d'une classe en Swift ?",
            answers: ["let obj = ClassName()", "let obj = new ClassName()", "var obj = ClassName", "var obj = new ClassName()"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Qu'est-ce qui distingue une classe d'une structure ?",
            answers: ["Les classes peuvent être héritées", "Les structures sont plus lentes", "Les structures sont plus flexibles", "Les classes ne peuvent contenir des fonctions"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Qu'est-ce qu'un constructeur en Swift ?",
            answers: ["Une méthode qui crée une instance d'une classe", "Une méthode qui retourne une fonction", "Un tableau contenant des données", "Un type de variable"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Comment déclarer une structure en Swift ?",
            answers: ["struct MaStructure {}", "class MaStructure {}", "typealias MaStructure {}", "var MaStructure {}"],
            goodAnswer: 0,
            validAnswer: false
        )
    ]
)



let closuresQuiz = ExercicesSolo(
    nameOfExercices: "Les Closures en Swift",
    exerciceFinished: false,
    exercice: [
        QuizExercice(
            question: "Qu'est-ce qu'une closure en Swift ?",
            answers: ["Une fonction anonyme", "Une boucle", "Une structure de données", "Un type de tableau"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Comment définit-on une closure simple en Swift ?",
            answers: ["let closure = { (x: Int) -> Int in return x * 2 }", "let closure = func (x: Int) -> Int { return x * 2 }", "let closure = (x: Int) -> Int { return x * 2 }", "closure = func (x: Int) { return x * 2 }"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Quelle syntaxe utilise-t-on pour passer une closure comme paramètre à une fonction ?",
            answers: ["fonction(paramètre: { x in ... })", "fonction(paramètre: closure)", "fonction(paramètre: closure())", "fonction(closure: paramètre)"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Qu'est-ce qu'une closure capturant les valeurs ?",
            answers: ["Une closure qui conserve les valeurs des variables dans son environnement", "Une closure qui fait une boucle", "Une closure qui peut se référer à des objets", "Une closure qui capture des erreurs"],
            goodAnswer: 0,
            validAnswer: false
        ),
        QuizExercice(
            question: "Quel est l'objectif principal d'une closure ?",
            answers: ["Définir un comportement anonyme", "Stocker des variables", "Accéder à des données externes", "Créer une instance de classe"],
            goodAnswer: 0,
            validAnswer: false
        )
    ]
)
