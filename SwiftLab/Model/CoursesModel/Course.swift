//
//  Course.swift
//  SwiftLab
//
//  Created by Sébastien Daguin on 07/07/2025.
//

import Foundation

struct Course: Identifiable {
    var id: UUID
    var title: String
    var videoUrl: String?
    var text: String
    var image: String
    var exemple: String
    var explication: String
    var tableau: String
    var mentalCard: String
    var section: [SectionOfCourses] = []
    
    
}







extension Course {
    static let allCourses: [Course] = [
        Course(
            id: UUID(),
            title: "Cours 1 - Introduction à Swift",
            videoUrl: "https://example.com/video1",
            text: "Découverte du langage Swift, son historique et ses avantages.",
            image: "cours1_image.png",
            exemple: "// Code exemple Swift pour l’intro",
            explication: "Ce code affiche une chaîne dans la console.",
            tableau: "| Élément | Description |\n|---|---|\n| Swift | Langage rapide et sûr |",
            mentalCard: "carte_mentale_1.png",
            section: [
                SectionOfCourses(title: "Text Cours", text: """
                    Swift est un langage moderne, sécurisé et performant, développé par Apple et présenté pour la première fois en 2014. Il a été conçu pour remplacer Objective-C, avec l’ambition d’apporter simplicité, sécurité et rapidité au développement sur les plateformes Apple.

                    En 2019, Apple introduit **SwiftUI**, un nouveau framework qui permet de construire des interfaces utilisateur de manière **déclarative**. Plutôt que de dire comment construire l’interface (comme en UIKit), on décrit simplement **ce qu’on
                    veut voir**, et SwiftUI s’occupe du rendu en fonction de l’état des données.

                    Swift + SwiftUI : écrire moins de code, plus lisible, plus dynamique.
                    """, imageName: nil),
                SectionOfCourses(title: "Image cours", text: nil, imageName: "cours-1-image-1.png"),
                SectionOfCourses(title: "Exemple code", text: nil, imageName: "cours-1-code-1.png"),
                SectionOfCourses(title: "Explication  du code", text: """
 • `@main` : point d’entrée de l’application SwiftUI
 • `MonApp` : structure principale de l’app
 • `WindowGroup` : conteneur principal de la vue
 • `ContentView` : composant de type `View`
 • `VStack` : empilement vertical
 •`Text()` : composant d’affichage de texte
 • Modificateurs comme `.font`, `.foregroundColor`, `.padding` : stylisent l’apparence
 """, imageName: nil),
                SectionOfCourses(title: "Tableau synthèse ", text: """
                    | Modificateur | Description |
                    | --- | --- |
                    | `.font()` | Change la taille/poids de la police (`.title`, `.body`, `.headline`, etc.) |
                    | `.foregroundColor()` | Définit la couleur du texte |
                    | `.background()` | Ajoute une couleur ou une vue en arrière-plan |
                    | `.padding()` | Ajoute de l’espace autour de la vue |
                    | `.frame()` | Définit une largeur/hauteur fixe |
                    | `.cornerRadius()` | Arrondit les coins d’un fond |
                    | `.shadow()` | Ajoute une ombre |
                    | `.opacity()` | Change la transparence de la vue |
                    | `.bold()` / `.italic()` | Rend le texte gras ou italique |
                    | `.multilineTextAlignment()` | Aligne le texte (ex. `.center`) |
                    """, imageName: nil),
                SectionOfCourses(title: "Carte Mentale", text: nil, imageName: "cours-1-carte-mentale")
                     ]
        ),
        Course(
            id: UUID(),
            title: "Cours 2 - Variables et constantes",
            videoUrl: "https://example.com/video2",
            text: "Apprenez à déclarer des variables et des constantes en Swift.",
            image: "cours2_image.png",
            exemple: "// let x = 10\nvar y = 5",
            explication: "‘let’ est une constante, ‘var’ une variable modifiable.",
            tableau: "| Mot-clé | Type |\n|---|---|\n| let | Constante |\n| var | Variable |",
            mentalCard: "carte_mentale_2.png",
        ),
        Course(
            id: UUID(),
            title: "Cours 3 - Types de données",
            videoUrl: "https://example.com/video3",
            text: "Comprendre les types de base comme Int, String, Bool.",
            image: "cours3_image.png",
            exemple: "// var age: Int = 30\nlet nom: String = \"Marie\"",
            explication: "Chaque variable a un type bien défini.",
            tableau: "| Type | Exemple |\n|---|---|\n| Int | 10 |\n| String | \"Hello\" |",
            mentalCard: "carte_mentale_3.png",
        ),
        Course(
            id: UUID(),
            title: "Cours 4 - Opérateurs",
            videoUrl: "https://example.com/video4",
            text: "Addition, soustraction, comparaison et logique.",
            image: "cours4_image.png",
            exemple: "// x + y\nx == y\n!flag",
            explication: "Les opérateurs servent à manipuler les valeurs.",
            tableau: "| Opérateur | Utilité |\n|---|---|\n| + | Addition |\n| == | Comparaison |",
            mentalCard: "carte_mentale_4.png",
        ),
        Course(
            id: UUID(),
            title: "Cours 5 - Conditions",
            videoUrl: "https://example.com/video5",
            text: "Utilisation de if, else et switch.",
            image: "cours5_image.png",
            exemple: "// if x > 10 { ... }\nswitch jour { case \"lundi\": ... }",
            explication: "On décide quoi faire selon une condition.",
            tableau: "| Structure | Usage |\n|---|---|\n| if/else | Conditions |\n| switch | Cas multiples |",
            mentalCard: "carte_mentale_5.png",
        ),
        Course(
            id: UUID(),
            title: "Cours 6 - Boucles",
            videoUrl: "https://example.com/video6",
            text: "Répéter des actions avec for et while.",
            image: "cours6_image.png",
            exemple: "// for i in 1...5 { print(i) }",
            explication: "Une boucle permet de répéter du code.",
            tableau: "| Boucle | Description |\n|---|---|\n| for | Boucle déterminée |\n| while | Boucle conditionnelle |",
            mentalCard: "carte_mentale_6.png",
        ),
        Course(
            id: UUID(),
            title: "Cours 7 - Fonctions",
            videoUrl: "https://example.com/video7",
            text: "Définir et appeler des fonctions en Swift.",
            image: "cours7_image.png",
            exemple: "// func greet() { print(\"Hello\") }",
            explication: "Les fonctions regroupent du code réutilisable.",
            tableau: "| Élément | Description |\n|---|---|\n| func | Déclaration |\n| () | Paramètres |",
            mentalCard: "carte_mentale_7.png",
        ),
        Course(
            id: UUID(),
            title: "Cours 8 - Closures",
            videoUrl: "https://example.com/video8",
            text: "Comprendre les fonctions anonymes (closures).",
            image: "cours8_image.png",
            exemple: "// let closure = { print(\"Closure!\") }",
            explication: "Les closures sont des blocs de code autonomes.",
            tableau: "| Syntaxe | Rôle |\n|---|---|\n| { ... } | Bloc anonyme |",
            mentalCard: "carte_mentale_8.png",
        ),
        Course(
            id: UUID(),
            title: "Cours 9 - SwiftUI Introduction",
            videoUrl: "https://example.com/video9",
            text: "Premiers pas avec SwiftUI et sa structure déclarative.",
            image: "cours9_image.png",
            exemple: "// Text(\"Hello, SwiftUI!\")",
            explication: "SwiftUI permet de créer des interfaces facilement.",
            tableau: "| Élément | Composant SwiftUI |\n|---|---|\n| Text | Affichage texte |",
            mentalCard: "carte_mentale_9.png",
        ),
        Course(
            id: UUID(),
            title: "Cours 10 - MVVM",
            videoUrl: "https://example.com/video10",
            text: "Architecture MVVM : séparation logique, vue et modèle.",
            image: "cours10_image.png",
            exemple: "// struct ViewModel: ObservableObject { ... }",
            explication: "MVVM améliore la lisibilité et la maintenance.",
            tableau: "| Élément | Rôle |\n|---|---|\n| ViewModel | Gère les données |",
            mentalCard: "carte_mentale_10.png",
        )
    ]
}
