//
//  CreateQuizExercice.swift
//  SwiftLab
//
//  Created by cyrilH on 09/07/2025.
//
import Foundation

struct ExoDatas {

    //MARK: - swiftBasics
    static let swiftBasics = Exercice(
        name: "Les Bases du Swift",
        isFinished: false,
        quizs: [
            Quiz(
                question: "Comment déclare-t-on une constante en Swift ?",
                choices: ["var", "let", "const", "static"],
                goodAnswer: "let",
                validAnswer: false
            ),
            Quiz(
                question: "Quel type représente un nombre entier ?",
                choices: ["String", "Int", "Double", "Bool"],
                goodAnswer: "Int",
                validAnswer: false
            ),
            Quiz(
                question: "Comment déclarer une variable en Swift ?",
                choices: ["var", "let", "mutable", "const"],
                goodAnswer: "var",
                validAnswer: false
            ),
            Quiz(
                question: "Quelle est la différence entre `let` et `var` ?",
                choices: [
                    "`let` est pour les constantes et `var` pour les variables",
                    "`let` est plus rapide que `var`",
                    "`let` est pour les tableaux",
                    "`var` ne peut pas être modifiée"
                ],
                goodAnswer: "`let` est pour les constantes et `var` pour les variables",
                validAnswer: false
            ),
            Quiz(
                question: "Quel type représente un nombre à virgule flottante ?",
                choices: ["Int", "Double", "Bool", "String"],
                goodAnswer: "Double",
                validAnswer: false
            )
        ]
    )
    
    //MARK: - functionsQuiz
    static let functionsQuiz = Exercice(
        name: "Les Fonctions en Swift",
        isFinished: false,
        quizs: [
            Quiz(
                question: "Comment déclare-t-on une fonction en Swift ?",
                choices: ["func maFonction()", "function maFonction()", "def maFonction()", "void maFonction()"],
                goodAnswer: "func maFonction()",
                validAnswer: false
            ),
            Quiz(
                question: "Que retourne cette fonction ?\n`func addition(a: Int, b: Int) -> Int { return a + b }`",
                choices: ["Un entier", "Un Booléen", "Une chaîne de caractères", "Un tableau"],
                goodAnswer: "Un entier",
                validAnswer: false
            ),
            Quiz(
                question: "Comment appelle-t-on une fonction en Swift ?",
                choices: ["maFonction()", "appeler(maFonction())", "func maFonction()", "exec maFonction()"],
                goodAnswer: "maFonction()",
                validAnswer: false
            ),
            Quiz(
                question: "Comment déclare-t-on une fonction qui ne retourne rien en Swift ?",
                choices: ["func maFonction() {}", "func maFonction() -> Void {}", "func maFonction() -> Int {}", "func maFonction(Void) {}"],
                goodAnswer: "func maFonction() -> Void {}",
                validAnswer: false
            ),
            Quiz(
                question: "Comment passons-nous des paramètres à une fonction ?",
                choices: [
                    "En les mettant dans les parenthèses après le nom de la fonction",
                    "En utilisant le mot-clé `parameters`",
                    "En les définissant avant la fonction",
                    "En les déclarant comme variables globales"
                ],
                goodAnswer: "En les mettant dans les parenthèses après le nom de la fonction",
                validAnswer: false
            )
        ]
    )
    
    //MARK: - optionalsQuiz
    static let optionalsQuiz = Exercice(
        name: "Les Optionnels en Swift",
        isFinished: false,
        quizs: [
            Quiz(
                question: "Que fait l'opérateur `?` dans Swift ?",
                choices: ["Il déclare un tableau", "Il transforme une variable en optionnelle", "Il vérifie une condition", "Il appelle une fonction"],
                goodAnswer: "Il transforme une variable en optionnelle",
                validAnswer: false
            ),
            Quiz(
                question: "Quel est le type de la variable `let name: String? = nil` ?",
                choices: ["String", "String? (Optionnel)", "Nil", "Void"],
                goodAnswer: "String? (Optionnel)",
                validAnswer: false
            ),
            Quiz(
                question: "Que représente une variable optionnelle ?",
                choices: ["Une valeur qui peut être `nil`", "Une variable avec une valeur par défaut", "Un tableau", "Une fonction qui retourne une valeur"],
                goodAnswer: "Une valeur qui peut être `nil`",
                validAnswer: false
            ),
            Quiz(
                question: "Comment déballer un optionnel en Swift ?",
                choices: ["En utilisant `unwrap()`", "En utilisant `!` ou `if let`", "En utilisant `unwrap!`", "En utilisant `?`"],
                goodAnswer: "En utilisant `!` ou `if let`",
                validAnswer: false
            ),
            Quiz(
                question: "Que fait l'opérateur `??` dans Swift ?",
                choices: ["Il vérifie si une variable est `nil`", "Il fournit une valeur par défaut si l'optionnel est `nil`", "Il permet de déballer un optionnel", "Il crée un nouveau tableau"],
                goodAnswer: "Il fournit une valeur par défaut si l'optionnel est `nil`",
                validAnswer: false
            )
        ]
    )
    
    //MARK: - arraysQuiz
    static let arraysQuiz = Exercice(
        name: "Les Tableaux en Swift",
        isFinished: false,
        quizs: [
            Quiz(
                question: "Comment crée-t-on un tableau vide en Swift ?",
                choices: ["let array = []", "let array: [String] = []", "let array = ()", "let array: Array = []"],
                goodAnswer: "let array: [String] = []",
                validAnswer: false
            ),
            Quiz(
                question: "Comment ajouter un élément au tableau `array` ?",
                choices: ["array.add()", "array.append(value)", "array.push(value)", "array.insert(value)"],
                goodAnswer: "array.append(value)",
                validAnswer: false
            ),
            Quiz(
                question: "Comment accéder à un élément d'un tableau à l'index 0 ?",
                choices: ["array[0]", "array[1]", "array.first()", "array[0..1]"],
                goodAnswer: "array[0]",
                validAnswer: false
            ),
            Quiz(
                question: "Quel est le type du tableau `let array = [1, 2, 3]` ?",
                choices: ["[Int]", "[String]", "[Any]", "[Double]"],
                goodAnswer: "[Int]",
                validAnswer: false
            ),
            Quiz(
                question: "Comment modifier un élément d'un tableau ?",
                choices: ["array[0] = 4", "array[0] = '4'", "array[0] = true", "array.update(0, 4)"],
                goodAnswer: "array[0] = 4",
                validAnswer: false
            )
        ]
    )
    
    //MARK: - structsAndClassesQuiz
    static let structsAndClassesQuiz = Exercice(
        name: "Structures et Classes en Swift",
        isFinished: false,
        quizs: [
            Quiz(
                question: "Quelle est la différence principale entre une structure et une classe en Swift ?",
                choices: [
                    "Les classes supportent l'héritage, pas les structures",
                    "Les structures sont plus lentes",
                    "Les structures sont mutables par défaut",
                    "Les classes ne peuvent pas contenir de méthodes"
                ],
                goodAnswer: "Les classes supportent l'héritage, pas les structures",
                validAnswer: false
            ),
            Quiz(
                question: "Comment crée-t-on une instance d'une classe en Swift ?",
                choices: ["let obj = ClassName()", "let obj = new ClassName()", "var obj = ClassName", "var obj = new ClassName()"],
                goodAnswer: "let obj = ClassName()",
                validAnswer: false
            ),
            Quiz(
                question: "Qu'est-ce qui distingue une classe d'une structure ?",
                choices: ["Les classes peuvent être héritées", "Les structures sont plus lentes", "Les structures sont plus flexibles", "Les classes ne peuvent contenir des fonctions"],
                goodAnswer: "Les classes peuvent être héritées",
                validAnswer: false
            ),
            Quiz(
                question: "Qu'est-ce qu'un constructeur en Swift ?",
                choices: ["Une méthode qui crée une instance d'une classe", "Une méthode qui retourne une fonction", "Un tableau contenant des données", "Un type de variable"],
                goodAnswer: "Une méthode qui crée une instance d'une classe",
                validAnswer: false
            ),
            Quiz(
                question: "Comment déclarer une structure en Swift ?",
                choices: ["struct MaStructure {}", "class MaStructure {}", "typealias MaStructure {}", "var MaStructure {}"],
                goodAnswer: "struct MaStructure {}",
                validAnswer: false
            )
        ]
    )
    
    //MARK: - closuresQuiz
    static let closuresQuiz = Exercice(
        name: "Les Closures en Swift",
        isFinished: false,
        quizs: [
            Quiz(
                question: "Qu'est-ce qu'une closure en Swift ?",
                choices: ["Une fonction anonyme", "Une boucle", "Une structure de données", "Un type de tableau"],
                goodAnswer: "Une fonction anonyme",
                validAnswer: false
            ),
            Quiz(
                question: "Comment définit-on une closure simple en Swift ?",
                choices: [
                    "let closure = { (x: Int) -> Int in return x * 2 }",
                    "let closure = func (x: Int) -> Int { return x * 2 }",
                    "let closure = (x: Int) -> Int { return x * 2 }",
                    "closure = func (x: Int) { return x * 2 }"
                ],
                goodAnswer: "let closure = { (x: Int) -> Int in return x * 2 }",
                validAnswer: false
            ),
            Quiz(
                question: "Quelle syntaxe utilise-t-on pour passer une closure comme paramètre à une fonction ?",
                choices: ["fonction(paramètre: { x in ... })", "fonction(paramètre: closure)", "fonction(paramètre: closure())", "fonction(closure: paramètre)"],
                goodAnswer: "fonction(paramètre: { x in ... })",
                validAnswer: false
            ),
            Quiz(
                question: "Qu'est-ce qu'une closure capturant les valeurs ?",
                choices: ["Une closure qui conserve les valeurs des variables dans son environnement", "Une closure qui fait une boucle", "Une closure qui peut se référer à des objets", "Une closure qui capture des erreurs"],
                goodAnswer: "Une closure qui conserve les valeurs des variables dans son environnement",
                validAnswer: false
            ),
            Quiz(
                question: "Quel est l'objectif principal d'une closure ?",
                choices: ["Définir un comportement anonyme", "Stocker des variables", "Accéder à des données externes", "Créer une instance de classe"],
                goodAnswer: "Définir un comportement anonyme",
                validAnswer: false
            )
        ]
    )
    
    //MARK: - allExercices
    static let allExercices: [Exercice] = [
        swiftBasics,
        functionsQuiz,
        optionalsQuiz,
        arraysQuiz,
        structsAndClassesQuiz,
        closuresQuiz
    ]
}
