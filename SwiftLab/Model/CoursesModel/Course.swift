//
//  Course.swift
//  SwiftLab
//
//  Created by Sébastien Daguin on 07/07/2025.
//

import Foundation

struct Course: Identifiable, Equatable {
    var id: UUID
    var title: String
    var videoName: String?
    var text: String
    var image: String
    var mentalCard: String
    var section: [SectionOfCourses] = []
    let test: Quiz
    var isFinished: Bool {
         progressPercent == 1.0
    }
    var isInProgress: Bool = false
    var progressPercent: Double {
        guard section.isNotEmpty else { return 1.0 }
        return Double(section.filter({ $0.isRead }).count) / Double(section.count)
    }
    
    static func == (lhs: Course, rhs: Course) -> Bool {
        lhs.title == rhs.title && lhs.text == rhs.text
    }
    
    
    
}


extension Course {
    static let allCourses: [Course] = [
        Course(
            id: UUID(),
            title: "Introduction à Swift",
            videoName: "video1",
            text: "Découverte du langage Swift, son historique et ses avantages.",
            image: "cours1_image.png",
            mentalCard: "carte_mentale_1.png",
            section: [
                SectionOfCourses(title: "Text Cours", text: """
                    Swift est un langage moderne, sécurisé et performant, développé par Apple et présenté pour la première fois en 2014. Il a été conçu pour remplacer Objective-C, avec l’ambition d’apporter simplicité, sécurité et rapidité au développement sur les plateformes Apple.

                    En 2019, Apple introduit SwiftUI, un nouveau framework qui permet de construire des interfaces utilisateur de manière déclarative. Plutôt que de dire comment construire l’interface (comme en UIKit), on décrit simplement **ce qu’on
                    veut voir**, et SwiftUI s’occupe du rendu en fonction de l’état des données.

                    Swift + SwiftUI : écrire moins de code, plus lisible, plus dynamique.
                    """, imageName: nil),
                SectionOfCourses(title: "Image cours", text: nil, imageName: "cours-1-image-1"),
                SectionOfCourses(title: "Exemple code", text: nil, imageName: "cours-1-code-1"),
                SectionOfCourses(title: "Explication  du code", text: """
 • @main : point d’entrée de l’application SwiftUI
 • MonApp : structure principale de l’app
 • WindowGroup : conteneur principal de la vue
 • ContentView : composant de type `View`
 • VStack : empilement vertical
 •Text() : composant d’affichage de texte
 • Modificateurs comme .font, .foregroundColor, .padding : stylisent l’apparence
 """, imageName: nil),
                SectionOfCourses(title: "Tableau synthèse ", text: nil, imageName: "cours-1-image-tableau"),
                SectionOfCourses(title: "Carte Mentale", text: nil, imageName: "cours-1-carte-mentale")
            ], test: Quiz(
                text: "Quel est l'avantage principal de SwiftUI par rapport à UIKit ?",
                answer: "Il permet de décrire l'interface de manière déclarative",
                choices: [
                    "Il est compatible avec Android",
                    "Il nécessite plus de code mais est plus rapide",
                    "Il permet de décrire l'interface de manière déclarative",
                    "Il remplace automatiquement les images par des icônes"
                ]
            )),
        
        
        Course(
            id: UUID(),
            title: "Variables, constantes et types de données en Swift",
            videoName: "video2",
            text: "Apprenez à déclarer des variables et des constantes en Swift.",
            image: "cours2_image.png",
            mentalCard: "carte_mentale_2.png",
            section: [
                SectionOfCourses(title: "Text Cours", text: """
                    Dans Swift, vous utilisez let pour déclarer une constante (valeur immuable), et var pour une variable (valeur modifiable).
                    let signifie que la valeur ne peut pas changer une fois définie.
                    var est utilisé pour les données qui peuvent changer.
                    Swift est un langage fortement typé : chaque donnée possède un type précis (String, Int, Bool, etc.).
                    """, imageName: nil),
                SectionOfCourses(title: "Image cours", text: nil, imageName: "cours-2-image-1"),
                SectionOfCourses(title: "Exemple code", text: nil, imageName: "cours-2-code-1"),
                SectionOfCourses(title: "Explication  du code", text: """
  • let prenom = Marie
  • Déclare une constante appelée prenom
  • Elle contient une chaîne de caractères (String)
  • Sa valeur ne peut pas changer
  • Ex : le prénom d’un utilisateur est fixe après l’inscription
 """, imageName: nil),
                SectionOfCourses(title: "Tableau synthèse ", text: nil, imageName: "cours-2-image-tableau"),
                SectionOfCourses(title: "Carte Mentale", text: nil, imageName: "cours-2-carte-mentale")
            ], test: Quiz(
                text: "Quelle est la différence entre 'let' et 'var' en Swift ?",
                answer: "'let' crée une constante, 'var' une variable",
                choices: [
                    "'let' est utilisé pour les chaînes, 'var' pour les nombres",
                    "'let' crée une constante, 'var' une variable",
                    "'var' est réservé aux fonctions",
                    "'let' ne fonctionne qu’avec les Booléens"
                ]
            )
),
            
            
        Course(
            id: UUID(),
            title: "Opérateurs",
            videoName: "video3",
            text: "Addition, soustraction, comparaison et logique.",
            image: "cours4_image.png",
            mentalCard: "carte_mentale_4.png",
            section: [
                SectionOfCourses(title: "Text Cours", text: """
                    Les opérateurs permettent de manipuler des valeurs et de prendre des décisions dans votre code Swift.
                    Swift utilise plusieurs types d’opérateurs :
                      • Arithmétiques : addition, soustraction…
                      • De comparaison : égal, supérieur, etc.
                      • Logiques : et, ou, négation
                      • D’affectation composée : +=, =, etc.
                    """, imageName: nil),
                SectionOfCourses(title: "Image cours", text: nil, imageName: "cours-3-image-1"),
                SectionOfCourses(title: "Exemple code", text: nil, imageName: "cours-3-code-1"),
                SectionOfCourses(title: "Explication  du code", text: """
  Affectation simple :
    • var a = 10 : création d’une variable avec une valeur initiale.
  Opérateurs arithmétiques :
    • +, /, % → manipulent des nombres.

  Opérateurs composés :
    • a += 2 équivaut à a = a + 2
    • b *= 2 équivaut à b = b * 2

  Opérateurs de comparaison :
    • Renvoient un Bool (true ou false) :
        • == : égalité
        • != : différence
        • > : supérieur
        • < : inférieur
        • >= et <= : supérieur ou égal / inférieur ou égal

   Opérateurs logiques :
    • && : ET logique — les deux doivent être vrais
    • || : OU logique — au moins un doit être vrai
    • ! : NON logique — inverse la valeur
 """, imageName: nil),
                SectionOfCourses(title: "Tableau synthèse ", text: nil, imageName: "cours-3-image-tableau"),
                SectionOfCourses(title: "Carte Mentale", text: nil, imageName: "cours-3-carte-mentale")
            ], test: Quiz(
                text: "Quel opérateur retourne 'true' uniquement si les deux conditions sont vraies ?",
                answer: "&&",
                choices: [
                    "||",
                    "&&",
                    "!",
                    "=="
                ]
            )

        ),
        

        Course(
            id: UUID(),
            title: "Les Structures de Contrôle en Swift",
            videoName: "video4",
            text: "Comprendre les structure de contrôle comme les conditions et les boucles.",
            image: "cours3_image.png",
            mentalCard: "carte_mentale_3.png",
            section: [
                SectionOfCourses(title: "Text Cours", text: """
                        • if/else agit comme un feu de circulation. Si la lumière est verte, on avance ; sinon, on s'arrête. En Swift, cela signifie que si une condition est vraie, un bloc de code est exécuté ; sinon, c'est un autre bloc qui prend le relais.
                        • switch fonctionne comme un menu dans un restaurant. Chaque choix de plat correspond à un "cas". Selon ce que l’utilisateur choisit (pizza, burger, salade...), une réponse différente est donnée. Et si aucun choix ne correspond, on propose un plat par défaut. C’est une alternative plus claire à une série de if/else.
                        • for et while sont comparables à un chronomètre. Par exemple, un minuteur de 5 secondes va afficher une action à chaque seconde. for est utilisé quand tu sais combien de temps tu veux répéter, alors que while continue tant qu'une condition reste vraie.
                    """, imageName: nil),
                SectionOfCourses(title: "Image cours", text: nil, imageName: "cours-4-image-1"),
                SectionOfCourses(title: "Exemple code", text: nil, imageName: "cours-4-code-1"),
                SectionOfCourses(title: "Explication  du code", text: """
   if / else – Feu de circulation

      • On teste la valeur de couleurFeu.
      • Si elle est "vert" → on affiche que la voiture avance.
      • Sinon (ex : "rouge" ou autre) → on affiche qu’elle s’arrête.
      • C’est un test conditionnel simple pour exécuter un bloc ou un autre.

   switch – Menu de restaurant

      • On vérifie le choix de plat via platChoisi.
      • Pour chaque case, une réponse spécifique est affichée (pizza, burger, salade).
      • Si le plat ne correspond à aucun cas connu, le default est déclenché.
      • Pratique quand on a **plusieurs cas précis à gérer**.

  for – Chronomètre avec nombre connu

      • On utilise une boucle for pour répéter une action de 1 à 5.
      • Chaque seconde est affichée avec print(" Seconde X").
      • Idéal quand tu sais **combien de fois tu veux répéter** une action.

  while – Chronomètre en décompte

      • La variable secondesRestantes commence à 5.
      • La boucle continue tant que la condition > 0 est vraie.
      • À chaque tour, on affiche le temps restant et on décrémente 1.
      • while est utilisé pour des boucles dépendant d'une condition dynamique.
 """, imageName: nil),
                SectionOfCourses(title: "Tableau synthèse ", text: nil, imageName: "cours-4-image-tableau"),
                SectionOfCourses(title: "Carte Mentale", text: nil, imageName: "cours-4-carte-mentale")
            ], test: Quiz(
                text: "Quelle structure est la plus adaptée pour gérer plusieurs cas précis dans Swift ?",
                answer: "switch",
                choices: [
                    "if / else",
                    "while",
                    "for",
                    "switch"
                ]
            )

        ),
        
        
        
        
        
        
        Course(
            id: UUID(),
            title: "Conditions",
            videoName: "https://example.com/video5",
            text: "Utilisation de if, else et switch.",
            image: "cours5_image.png",
            mentalCard: "carte_mentale_5.png", test: Quiz(
                text: "Que fait une structure 'if' en Swift ?",
                answer: "Elle exécute un bloc de code si une condition est vraie",
                choices: [
                    "Elle affiche toujours un message d'erreur",
                    "Elle répète une action plusieurs fois",
                    "Elle exécute un bloc de code si une condition est vraie",
                    "Elle importe un fichier externe"
                ]
            )
,
        ),
        Course(
            id: UUID(),
            title: "Boucles",
            videoName: "https://example.com/video6",
            text: "Répéter des actions avec for et while.",
            image: "cours6_image.png",
            mentalCard: "carte_mentale_6.png", test: Quiz(
                text: "Quelle est la différence entre 'for' et 'while' ?",
                answer: "'for' s’utilise avec un nombre d’itérations connu, 'while' avec une condition dynamique",
                choices: [
                    "'for' répète à l’infini",
                    "'while' est utilisé uniquement dans UIKit",
                    "'for' est plus rapide que 'while'",
                    "'for' s’utilise avec un nombre d’itérations connu, 'while' avec une condition dynamique"
                ]
            )
,
        ),
        Course(
            id: UUID(),
            title: "Fonctions",
            videoName: "https://example.com/video7",
            text: "Définir et appeler des fonctions en Swift.",
            image: "cours7_image.png",
            mentalCard: "carte_mentale_7.png", test: Quiz(
                text: "Comment appelle-t-on une fonction simple en Swift ?",
                answer: "en utilisant son nom suivi de parenthèses",
                choices: [
                    "en déclarant une variable",
                    "en écrivant 'call nomDeFonction'",
                    "en utilisant son nom suivi de parenthèses",
                    "avec la syntaxe 'function nom()'"
                ]
            )
,
        ),
        Course(
            id: UUID(),
            title: "Closures",
            videoName: "https://example.com/video8",
            text: "Comprendre les fonctions anonymes (closures).",
            image: "cours8_image.png",
            mentalCard: "carte_mentale_8.png", test: Quiz(
                text: "Qu’est-ce qu’une closure en Swift ?",
                answer: "Une fonction sans nom que l’on peut passer comme valeur",
                choices: [
                    "Une classe spéciale",
                    "Une fonction qui ferme une vue",
                    "Une fonction sans nom que l’on peut passer comme valeur",
                    "Un raccourci clavier"
                ]
            )
,
        ),
        Course(
            id: UUID(),
            title: "SwiftUI Introduction",
            videoName: "https://example.com/video9",
            text: "Premiers pas avec SwiftUI et sa structure déclarative.",
            image: "cours9_image.png",
            mentalCard: "carte_mentale_9.png", test: Quiz(
                text: "Comment SwiftUI définit-il une interface ?",
                answer: "De façon déclarative, en fonction de l’état des données",
                choices: [
                    "En codant chaque pixel",
                    "De façon impérative",
                    "Avec des storyboard uniquement",
                    "De façon déclarative, en fonction de l’état des données"
                ]
            )
,
        ),
        Course(
            id: UUID(),
            title: "MVVM",
            videoName: "https://example.com/video10",
            text: "Architecture MVVM : séparation logique, vue et modèle.",
            image: "cours10_image.png",
            mentalCard: "carte_mentale_10.png", test: Quiz(
                text: "Quel est l’objectif du pattern MVVM ?",
                answer: "Séparer les responsabilités entre données, logique et interface",
                choices: [
                    "Créer un seul fichier de code pour tout faire",
                    "Simplifier UIKit",
                    "Fusionner modèle et vue",
                    "Séparer les responsabilités entre données, logique et interface"
                ]
            )
,
        )
    ]
}
