//
//  ExercicesCourseDatas.swift
//  SwiftLab
//
//  Created by Dembo on 30/07/2025.
//

import SwiftUI
import Foundation

struct ExercicesCourseDatas {
    
    static let swiftCourse1 = ExercicesCourses(
        nameOfExercices: "Introduction à Swift et SwiftUI",
        exerciceFinished: false,
        exercice: [
            QuizCoursesExercices(
                question: "Quelle est l’année de sortie du langage Swift ?",
                choices: ["2012", "2014", "2016", "2019"],
                goodAnswer: "2014",
                correction: """
                    Swift a été introduit par Apple en 2014 lors de la WWDC.
                    C'est un langage moderne, rapide et sûr destiné au développement sur les plateformes Apple.
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: "Quel est le principal paradigme utilisé par SwiftUI ?",
                choices: ["Orienté Objet", "Réactif", "Déclaratif", "Impératif"],
                goodAnswer: "Déclaratif",
                correction: """
                    SwiftUI repose sur un paradigme déclaratif, ce qui signifie qu'on décrit le résultat visuel souhaité plutôt que les étapes pour y arriver.
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: "Quel composant permet de regrouper plusieurs vues verticalement ?",
                choices: ["HStack", "ZStack", "VStack", "List"],
                goodAnswer: "VStack",
                correction: """
                    VStack permet d’empiler les vues verticalement dans SwiftUI.
                    HStack est pour l’horizontal, ZStack pour la superposition.
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: "Quel est le rôle du mot-clé @main dans une app SwiftUI ?",
                choices: ["Déclarer une variable globale", "Définir le point d’entrée de l’application", "Indiquer une constante", "Lancer une animation"],
                goodAnswer: "Définir le point d’entrée de l’application",
                correction: """
                    Le mot-clé @main indique à Swift où commence l’exécution de l’application.
                    Il est utilisé avec la struct principale de l'app.
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: "À quoi sert .foregroundColor(.blue) dans SwiftUI ?",
                choices: ["Changer la couleur du fond", "Ajouter une image", "Changer la couleur du texte", "Modifier la couleur de l’écran"],
                goodAnswer: "Changer la couleur du texte",
                correction: """
                    .foregroundColor(.blue) permet de modifier la couleur du texte (ou d'autres éléments graphiques) dans SwiftUI.
                    """,
                validAnswer: false
            )
        ]
    )


    static let swiftCourse2 = ExercicesCourses(
        nameOfExercices: "Constantes et Types de Base",
        exerciceFinished: false,
        exercice: [
            QuizCoursesExercices(
                question: "Quel mot-clé déclare une constante ?",
                choices: ["var", "let", "const", "final"],
                goodAnswer: "let",
                correction: """
                    Le mot-clé `let` permet de déclarer une constante en Swift.
                    Une fois sa valeur assignée, elle ne peut plus être modifiée.
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: "Lequel de ces types représente une valeur vraie ou fausse ?",
                choices: ["Int", "Bool", "String", "Double"],
                goodAnswer: "Bool",
                correction: """
                    `Bool` est le type utilisé pour représenter des valeurs vraies (`true`) ou fausses (`false`).
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: "Quel type est automatiquement utilisé pour \"Bonjour\" ?",
                choices: ["String", "Char", "Text", "Label"],
                goodAnswer: "String",
                correction: """
                    Swift infère le type `String` pour toute chaîne de caractères entre guillemets comme \"Bonjour\".
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: "Que se passe-t-il si on essaie de modifier une constante `let` ?",
                choices: ["Elle change de valeur", "Erreur de compilation", "Elle devient une variable", "Rien"],
                goodAnswer: "Erreur de compilation",
                correction: """
                    Une constante déclarée avec `let` ne peut pas être modifiée après initialisation.
                    Swift produit une erreur à la compilation.
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: """
                    Quelle est la valeur finale dans ce code ?

                    ```swift
                    var total = 10
                    total += 5
                    ```
                    """,
                choices: ["10", "11", "15", "20"],
                goodAnswer: "15",
                correction: """
                    La variable `total` commence à 10, puis on lui ajoute 5. Elle vaut donc 15 à la fin.
                    """,
                validAnswer: false
            )
        ]
    )


    static let swiftCourse3 = ExercicesCourses(
        nameOfExercices: "Les opérateurs",
        exerciceFinished: false,
        exercice: [
            QuizCoursesExercices(
                question: "Quel opérateur donne le reste d’une division ?",
                choices: ["/", "%", "*", "=="],
                goodAnswer: "%",
                correction: """
                    L’opérateur `%` est appelé le modulo. Il retourne le reste de la division.
                    Par exemple : `10 % 3 = 1`.
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: "Quel est le résultat de `5 > 3` ?",
                choices: ["true", "false", "2", "nil"],
                goodAnswer: "true",
                correction: """
                    L’expression `5 > 3` est vraie, donc elle retourne `true`.
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: "Que retourne `true && false` ?",
                choices: ["true", "false", "nil", "1"],
                goodAnswer: "false",
                correction: """
                    L’opérateur `&&` (ET logique) retourne `true` seulement si les deux opérandes sont vraies.
                    Ici : `true && false` donne `false`.
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: "Quel opérateur signifie “différent de” ?",
                choices: ["=", "===", "!=", "<>"],
                goodAnswer: "!=",
                correction: """
                    `!=` signifie « différent de » en Swift.
                    Par exemple : `5 != 3` retourne `true`.
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: """
                    Quelle est la valeur finale dans ce code ?

                    ```swift
                    var nombre = 4
                    nombre *= 2
                    ```
                    """,
                choices: ["4", "6", "8", "2"],
                goodAnswer: "8",
                correction: """
                    `nombre *= 2` est équivalent à `nombre = nombre * 2`.
                    Donc si `nombre` vaut 4 au départ, il devient 8.
                    """,
                validAnswer: false
            )
        ]
    )

    static let swiftCourse4 = ExercicesCourses(
        nameOfExercices: "Structures de Contrôle",
        exerciceFinished: false,
        exercice: [
            QuizCoursesExercices(
                question: "Quelle structure permet de tester plusieurs cas ?",
                choices: ["if", "else", "switch", "repeat"],
                goodAnswer: "switch",
                correction: """
                    La structure `switch` permet de comparer une valeur à plusieurs cas possibles.
                    Elle est plus lisible que plusieurs `if` enchaînés.
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: "Combien de fois s'exécute une boucle `repeat while` au minimum ?",
                choices: ["0", "1", "2", "Cela dépend"],
                goodAnswer: "1",
                correction: """
                    Une boucle `repeat while` s’exécute au moins une fois, car la condition est testée après le premier passage.
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: "Quelle boucle est idéale pour répéter un bloc un nombre précis de fois ?",
                choices: ["for-in", "while", "repeat", "if"],
                goodAnswer: "for-in",
                correction: """
                    La boucle `for-in` est idéale pour parcourir une plage ou une collection un nombre défini de fois.
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: "Que se passe-t-il si on oublie `default` dans un `switch` ?",
                choices: ["Le code plante", "Erreur de compilation si tous les cas ne sont pas couverts", "Rien", "Swift choisit un cas au hasard"],
                goodAnswer: "Erreur de compilation si tous les cas ne sont pas couverts",
                correction: """
                    En Swift, si tous les cas possibles ne sont pas couverts dans un `switch`, il faut ajouter un `default`, sauf si le type est exhaustif (comme une enum).
                    """,
                validAnswer: false
            ),
            QuizCoursesExercices(
                question: """
                    Quel est le résultat de ce code ?

                    ```swift
                    let x = 5

                    if x < 3 {
                        print("Petit")
                    } else {
                        print("Grand")
                    }
                    ```
                    """,
                choices: ["Petit", "Grand", "Erreur", "5"],
                goodAnswer: "Grand",
                correction: """
                    Puisque `x` vaut 5, la condition `x < 3` est fausse.
                    Le bloc `else` s’exécute donc et affiche `"Grand"`.
                    """,
                validAnswer: false
            )
        ]
    )
    
    //MARK: - allExercices
    static let allExercices: [ExercicesCourses] = [
        swiftCourse1,
        swiftCourse2,
        swiftCourse3,
        swiftCourse4
    ]

}

