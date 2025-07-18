//
//  CreateQuizExercice.swift
//  SwiftLab
//
//  Created by cyrilH on 09/07/2025.
//
import Foundation

struct ExoDatas {

    //MARK: - swiftBasics
    static let swiftBasics = Exercices(
        nameOfExercices: "Les Bases du Swift - 1",
        exerciceFinished: false,
        exercice: [
            QuizExercice(
                question: "Comment déclare-t-on une constante en Swift ?",
                choices: ["var", "let", "const", "static"],
                goodAnswer: "let",
                correction: """
                        let est utilisé pour déclarer une constante en Swift.
                        Une constante ne peut pas changer de valeur après son initialisation. C’est utile pour garantir l’immuabilité des données, ce qui renforce la sécurité du code.
                    """,
                validAnswer: false
                
            ),
            QuizExercice(
                question: "Quel type représente un nombre entier ?",
                choices: ["String", "Int", "Double", "Bool"],
                goodAnswer: "Int",
                correction: """
                        Int est le type utilisé pour représenter des nombres entiers. Int est un type natif en Swift pour gérer les nombres sans décimales. Il peut être positif ou négatif selon les besoins.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Comment déclarer une variable en Swift ?",
                choices: ["var", "let", "mutable", "const"],
                goodAnswer: "var",
                correction: """
                    var permet de déclarer une variable modifiable.
                    Contrairement à let, une variable déclarée avec var peut changer de valeur après sa déclaration, ce qui la rend adaptée aux données dynamiques.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Quelle est la différence entre `let` et `var` ?",
                choices: [
                    "`let` est pour les constantes et `var` pour les variables",
                    "`let` est plus rapide que `var`",
                    "`let` est pour les tableaux",
                    "`var` ne peut pas être modifiée"
                ],
                goodAnswer: "`let` est pour les constantes et `var` pour les variables",
                correction: """
                    let est pour les constantes, var pour les variables.
                    let rend la valeur immuable (fixe), tandis que var permet à la valeur de changer. Utiliser let par défaut est une bonne pratique si la valeur ne doit pas changer.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Quel type représente un nombre à virgule flottante ?",
                choices: ["Int", "Double", "Bool", "String"],
                goodAnswer: "Double",
                correction: """
                    Double représente un nombre à virgule flottante.
                    Il permet de stocker des valeurs décimales avec une précision de 64 bits, utile pour les calculs scientifiques ou financiers.
                    """,
                validAnswer: false
            )
        ]
    )
    
    //MARK: - functionsQuiz
    static let functionsQuiz = Exercices(
        nameOfExercices: "Les Fonctions en Swift",
        exerciceFinished: false,
        exercice: [
            QuizExercice(
                question: "Comment déclare-t-on une fonction en Swift ?",
                choices: ["func maFonction()", "function maFonction()", "def maFonction()", "void maFonction()"],
                goodAnswer: "func maFonction()",
                correction: """
                    func est le mot-clé pour déclarer une fonction.
                    La syntaxe func nomDeFonction() est utilisée pour définir des blocs réutilisables de code. C’est une fondation de la programmation modulaire.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Que retourne cette fonction ?\n`func addition(a: Int, b: Int) -> Int { return a + b }`",
                choices: ["Un entier", "Un Booléen", "Une chaîne de caractères", "Un tableau"],
                goodAnswer: "Un entier",
                correction: """
                    La fonction retourne un entier (Int).
                    Le type Int est précisé après ->. La fonction additionne deux entiers et retourne le résultat sous forme d'entier.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Comment appelle-t-on une fonction en Swift ?",
                choices: ["maFonction()", "appeler(maFonction())", "func maFonction()", "exec maFonction()"],
                goodAnswer: "maFonction()",
                correction: """
                    On appelle une fonction avec nomDeFonction().
                    Ajouter les parenthèses est indispensable même si la fonction ne prend pas de paramètres. Cela déclenche l’exécution.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Comment déclare-t-on une fonction qui ne retourne rien en Swift ?",
                choices: ["func maFonction() {}", "func maFonction() -> Void {}", "func maFonction() -> Int {}", "func maFonction(Void) {}"],
                goodAnswer: "func maFonction() -> Void {}",
                correction: """
                    Une fonction qui ne retourne rien utilise -> Void.
                    Void est équivalent à un type vide, souvent utilisé pour indiquer qu'une fonction n’a pas de valeur de retour.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Comment passons-nous des paramètres à une fonction ?",
                choices: [
                    "En les mettant dans les parenthèses après le nom de la fonction",
                    "En utilisant le mot-clé `parameters`",
                    "En les définissant avant la fonction",
                    "En les déclarant comme variables globales"
                ],
                goodAnswer: "En les mettant dans les parenthèses après le nom de la fonction",
                correction: """
                    Les paramètres sont définis entre parenthèses après le nom.
                    Swift permet de passer des valeurs à une fonction via des paramètres, ce qui rend le code plus flexible et réutilisable.
                    """,
                validAnswer: false
            )
        ]
    )
    
    //MARK: - optionalsQuiz
    static let optionalsQuiz = Exercices(
        nameOfExercices: "Les Optionnels en Swift",
        exerciceFinished: false,
        exercice: [
            QuizExercice(
                question: "Que fait l'opérateur `?` dans Swift ?",
                choices: ["Il déclare un tableau", "Il transforme une variable en optionnelle", "Il vérifie une condition", "Il appelle une fonction"],
                goodAnswer: "Il transforme une variable en optionnelle",
                correction: """
                    L’opérateur ? transforme une variable en optionnelle.
                    Une variable optionnelle peut contenir soit une valeur, soit nil. Cela évite les crashs en cas de valeur manquante et force à gérer les cas d'absence de données.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Quel est le type de la variable `let name: String? = nil` ?",
                choices: ["String", "String? (Optionnel)", "Nil", "Void"],
                goodAnswer: "String? (Optionnel)",
                correction: """
                    Le type est String?, c’est-à-dire un String optionnel.
                    Le ? indique que la variable peut contenir une chaîne de caractères ou être vide (nil). C’est un outil puissant de sécurité de type en Swift.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Que représente une variable optionnelle ?",
                choices: ["Une valeur qui peut être `nil`", "Une variable avec une valeur par défaut", "Un tableau", "Une fonction qui retourne une valeur"],
                goodAnswer: "Une valeur qui peut être `nil`",
                correction: """
                    Une variable optionnelle peut être nil.
                    Cela permet de différencier entre "aucune valeur" et une valeur valide. C’est crucial pour gérer des données venant d’un réseau ou d’une base de données.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Comment déballer un optionnel en Swift ?",
                choices: ["En utilisant `unwrap()`", "En utilisant `!` ou `if let`", "En utilisant `unwrap!`", "En utilisant `?`"],
                goodAnswer: "En utilisant `!` ou `if let`",
                correction: """
                    On déballe avec ! (force unwrap) ou if let.
                    ! force l’accès à la valeur (dangereux si nil), alors que if let permet de vérifier la présence d’une valeur avant de l’utiliser.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Que fait l'opérateur `??` dans Swift ?",
                choices: ["Il vérifie si une variable est `nil`", "Il fournit une valeur par défaut si l'optionnel est `nil`", "Il permet de déballer un optionnel", "Il crée un nouveau tableau"],
                goodAnswer: "Il fournit une valeur par défaut si l'optionnel est `nil`",
                correction: """
                    ?? fournit une valeur par défaut si l’optionnel est nil.
                    Cet opérateur est très pratique pour garantir une valeur même si l’optionnel est vide, en fournissant une alternative sûre.
                    """,
                validAnswer: false
            )
        ]
    )
    
    //MARK: - arraysQuiz
    static let arraysQuiz = Exercices(
        nameOfExercices: "Les Tableaux en Swift",
        exerciceFinished: false,
        exercice: [
            QuizExercice(
                question: "Comment crée-t-on un tableau vide en Swift ?",
                choices: ["let array = []", "let array: [String] = []", "let array = ()", "let array: Array = []"],
                goodAnswer: "let array: [String] = []",
                correction: """
                    let array: [String] = [] crée un tableau vide.
                    Cette syntaxe précise à Swift que le tableau va contenir des chaînes de caractères. Sans type, Swift ne peut pas déduire ce que contient le tableau vide.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Comment ajouter un élément au tableau `array` ?",
                choices: ["array.add()", "array.append(value)", "array.push(value)", "array.insert(value)"],
                goodAnswer: "array.append(value)",
                correction: """
                    append() ajoute un élément à la fin du tableau.
                    C’est la méthode standard pour insérer des données dans un tableau. Elle modifie le tableau en place.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Comment accéder à un élément d'un tableau à l'index 0 ?",
                choices: ["array[0]", "array[1]", "array.first()", "array[0..1]"],
                goodAnswer: "array[0]",
                correction: """
                    array[0] accède au premier élément.
                    En Swift, comme dans de nombreux langages, les index des tableaux commencent à 0, pas à 1.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Quel est le type du tableau `let array = [1, 2, 3]` ?",
                choices: ["[Int]", "[String]", "[Any]", "[Double]"],
                goodAnswer: "[Int]",
                correction: """
                    [Int] signifie un tableau d'entiers.
                    Swift infère automatiquement le type [Int] à partir des valeurs [1, 2, 3].
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Comment modifier un élément d'un tableau ?",
                choices: ["array[0] = 4", "array[0] = '4'", "array[0] = true", "array.update(0, 4)"],
                goodAnswer: "array[0] = 4",
                correction: """
                    array[0] = 4 modifie l’élément à l’index 0.
                    C’est la manière classique de modifier un tableau en accédant directement à un index.
                    """,
                validAnswer: false
            )
        ]
    )
    
    //MARK: - structsAndClassesQuiz
    static let structsAndClassesQuiz = Exercices(
        nameOfExercices: "Structures et Classes en Swift",
        exerciceFinished: false,
        exercice: [
            QuizExercice(
                question: "Quelle est la différence principale entre une structure et une classe en Swift ?",
                choices: [
                    "Les classes supportent l'héritage, pas les structures",
                    "Les structures sont plus lentes",
                    "Les structures sont mutables par défaut",
                    "Les classes ne peuvent pas contenir de méthodes"
                ],
                goodAnswer: "Les classes supportent l'héritage, pas les structures",
                correction: """
                    Les classes supportent l’héritage, pas les structures.
                    En Swift, seules les classes peuvent hériter d’une autre classe. Les structures ne peuvent pas adopter ce comportement, elles sont copiées par valeur.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Comment crée-t-on une instance d'une classe en Swift ?",
                choices: ["let obj = ClassName()", "let obj = new ClassName()", "var obj = ClassName", "var obj = new ClassName()"],
                goodAnswer: "let obj = ClassName()",
                correction: """
                    let obj = ClassName() crée une instance.
                    C’est la syntaxe standard pour instancier une classe. Pas besoin du mot-clé new en Swift.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Qu'est-ce qui distingue une classe d'une structure ?",
                choices: ["Les classes peuvent être héritées", "Les structures sont plus lentes", "Les structures sont plus flexibles", "Les classes ne peuvent contenir des fonctions"],
                goodAnswer: "Les classes peuvent être héritées",
                correction: """
                    Les classes peuvent être héritées.
                    Cela signifie qu’une classe peut hériter des propriétés et méthodes d’une autre, permettant la réutilisation du code via le polymorphisme.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Qu'est-ce qu'un constructeur en Swift ?",
                choices: ["Une méthode qui crée une instance d'une classe", "Une méthode qui retourne une fonction", "Un tableau contenant des données", "Un type de variable"],
                goodAnswer: "Une méthode qui crée une instance d'une classe",
                correction: """
                    Un constructeur initialise une instance.
                    En Swift, le constructeur est une fonction spéciale appelée init() qui permet d’attribuer des valeurs initiales aux propriétés.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Comment déclarer une structure en Swift ?",
                choices: ["struct MaStructure {}", "class MaStructure {}", "typealias MaStructure {}", "var MaStructure {}"],
                goodAnswer: "struct MaStructure {}",
                correction: """
                    Une structure se déclare avec struct.
                    struct permet de créer des types personnalisés simples, très utilisés pour les données modélisées, notamment dans SwiftUI.
                    """,
                validAnswer: false
            )
        ]
    )
    
    //MARK: - closuresQuiz
    static let closuresQuiz = Exercices(
        nameOfExercices: "Les Closures en Swift",
        exerciceFinished: false,
        exercice: [
            QuizExercice(
                question: "Qu'est-ce qu'une closure en Swift ?",
                choices: ["Une fonction anonyme", "Une boucle", "Une structure de données", "Un type de tableau"],
                goodAnswer: "Une fonction anonyme",
                correction: """
                    Une closure est une fonction anonyme.
                    C’est un bloc de code qui peut être passé comme paramètre ou stocké dans une variable. Très utile pour des callbacks ou traitements différés.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Comment définit-on une closure simple en Swift ?",
                choices: [
                    "let closure = { (x: Int) -> Int in return x * 2 }",
                    "let closure = func (x: Int) -> Int { return x * 2 }",
                    "let closure = (x: Int) -> Int { return x * 2 }",
                    "closure = func (x: Int) { return x * 2 }"
                ],
                goodAnswer: "let closure = { (x: Int) -> Int in return x * 2 }",
                correction: """
                    let closure = { (x: Int) -> Int in return x * 2 } est correct.
                    Cette syntaxe déclare une closure prenant un entier en entrée et retournant un entier. Le mot-clé in sépare la déclaration de la logique.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Quelle syntaxe utilise-t-on pour passer une closure comme paramètre à une fonction ?",
                choices: ["fonction(paramètre: { x in ... })", "fonction(paramètre: closure)", "fonction(paramètre: closure())", "fonction(closure: paramètre)"],
                goodAnswer: "fonction(paramètre: { x in ... })",
                correction: """
                    On passe une closure avec fonction(paramètre: { x in ... }).
                    Cette syntaxe permet de passer directement une closure à une fonction. C’est très utilisé dans les méthodes comme .map { } ou .filter { }.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Qu'est-ce qu'une closure capturant les valeurs ?",
                choices: ["Une closure qui conserve les valeurs des variables dans son environnement", "Une closure qui fait une boucle", "Une closure qui peut se référer à des objets", "Une closure qui capture des erreurs"],
                goodAnswer: "Une closure qui conserve les valeurs des variables dans son environnement",
                correction: """
                    Une closure capturant des valeurs garde l’environnement.
                    Une closure peut capturer des variables déclarées dans le contexte où elle a été créée. Cela lui permet de les utiliser même si ce contexte n’existe plus.
                    """,
                validAnswer: false
            ),
            QuizExercice(
                question: "Quel est l'objectif principal d'une closure ?",
                choices: ["Définir un comportement anonyme", "Stocker des variables", "Accéder à des données externes", "Créer une instance de classe"],
                goodAnswer: "Définir un comportement anonyme",
                correction: """
                    Une closure permet de définir un comportement anonyme.
                    Elle évite de créer une fonction nommée pour un usage temporaire, ce qui allège le code et améliore sa lisibilité.
                    """,
                validAnswer: false
            )
        ]
    )
    
    //MARK: - allExercices
    static let allExercices: [Exercices] = [
        swiftBasics,
        functionsQuiz,
        optionalsQuiz,
        arraysQuiz,
        structsAndClassesQuiz,
        closuresQuiz
    ]
}
