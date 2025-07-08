//
//  Course.swift
//  SwiftLab
//
//  Created by Sébastien Daguin on 07/07/2025.
//

import Foundation

struct CourseData: Identifiable {
    var id: UUID
    var title: String
    var videoUrl: String?
    var text: String
    var image: String
    var exemple: String
    var explication: String
    var tableau: String
    var mentalCard: String
    var sections: [SectionOfCourses]
}
let courses: [CourseData] = [
    CourseData(
        id: UUID(),
        title: "Cours 1 - Introduction à Swift",
        videoUrl: "https://example.com/video1",
        text: "Découverte du langage Swift, son historique et ses avantages.",
        image: "cours1_image.png",
        exemple: "// Code exemple Swift pour l’intro",
        explication: "Ce code affiche une chaîne dans la console.",
        tableau: "| Élément | Description |\n|---|---|\n| Swift | Langage rapide et sûr |",
        mentalCard: "carte_mentale_1.png",
        sections: []
    ),
    CourseData(
        id: UUID(),
        title: "Cours 2 - Variables et constantes",
        videoUrl: "https://example.com/video2",
        text: "Apprenez à déclarer des variables et des constantes en Swift.",
        image: "cours2_image.png",
        exemple: "// let x = 10\nvar y = 5",
        explication: "‘let’ est une constante, ‘var’ une variable modifiable.",
        tableau: "| Mot-clé | Type |\n|---|---|\n| let | Constante |\n| var | Variable |",
        mentalCard: "carte_mentale_2.png",
        sections: []
    ),
    CourseData(
        id: UUID(),
        title: "Cours 3 - Types de données",
        videoUrl: "https://example.com/video3",
        text: "Comprendre les types de base comme Int, String, Bool.",
        image: "cours3_image.png",
        exemple: "// var age: Int = 30\nlet nom: String = \"Marie\"",
        explication: "Chaque variable a un type bien défini.",
        tableau: "| Type | Exemple |\n|---|---|\n| Int | 10 |\n| String | \"Hello\" |",
        mentalCard: "carte_mentale_3.png",
        sections: []
    ),
    CourseData(
        id: UUID(),
        title: "Cours 4 - Opérateurs",
        videoUrl: "https://example.com/video4",
        text: "Addition, soustraction, comparaison et logique.",
        image: "cours4_image.png",
        exemple: "// x + y\nx == y\n!flag",
        explication: "Les opérateurs servent à manipuler les valeurs.",
        tableau: "| Opérateur | Utilité |\n|---|---|\n| + | Addition |\n| == | Comparaison |",
        mentalCard: "carte_mentale_4.png",
        sections: []
    ),
    CourseData(
        id: UUID(),
        title: "Cours 5 - Conditions",
        videoUrl: "https://example.com/video5",
        text: "Utilisation de if, else et switch.",
        image: "cours5_image.png",
        exemple: "// if x > 10 { ... }\nswitch jour { case \"lundi\": ... }",
        explication: "On décide quoi faire selon une condition.",
        tableau: "| Structure | Usage |\n|---|---|\n| if/else | Conditions |\n| switch | Cas multiples |",
        mentalCard: "carte_mentale_5.png",
        sections: []
    ),
    CourseData(
        id: UUID(),
        title: "Cours 6 - Boucles",
        videoUrl: "https://example.com/video6",
        text: "Répéter des actions avec for et while.",
        image: "cours6_image.png",
        exemple: "// for i in 1...5 { print(i) }",
        explication: "Une boucle permet de répéter du code.",
        tableau: "| Boucle | Description |\n|---|---|\n| for | Boucle déterminée |\n| while | Boucle conditionnelle |",
        mentalCard: "carte_mentale_6.png",
        sections: []
    ),
    CourseData(
        id: UUID(),
        title: "Cours 7 - Fonctions",
        videoUrl: "https://example.com/video7",
        text: "Définir et appeler des fonctions en Swift.",
        image: "cours7_image.png",
        exemple: "// func greet() { print(\"Hello\") }",
        explication: "Les fonctions regroupent du code réutilisable.",
        tableau: "| Élément | Description |\n|---|---|\n| func | Déclaration |\n| () | Paramètres |",
        mentalCard: "carte_mentale_7.png",
        sections: []
    ),
    CourseData(
        id: UUID(),
        title: "Cours 8 - Closures",
        videoUrl: "https://example.com/video8",
        text: "Comprendre les fonctions anonymes (closures).",
        image: "cours8_image.png",
        exemple: "// let closure = { print(\"Closure!\") }",
        explication: "Les closures sont des blocs de code autonomes.",
        tableau: "| Syntaxe | Rôle |\n|---|---|\n| { ... } | Bloc anonyme |",
        mentalCard: "carte_mentale_8.png",
        sections: []
    ),
    CourseData(
        id: UUID(),
        title: "Cours 9 - SwiftUI Introduction",
        videoUrl: "https://example.com/video9",
        text: "Premiers pas avec SwiftUI et sa structure déclarative.",
        image: "cours9_image.png",
        exemple: "// Text(\"Hello, SwiftUI!\")",
        explication: "SwiftUI permet de créer des interfaces facilement.",
        tableau: "| Élément | Composant SwiftUI |\n|---|---|\n| Text | Affichage texte |",
        mentalCard: "carte_mentale_9.png",
        sections: []
    ),
    CourseData(
        id: UUID(),
        title: "Cours 10 - MVVM",
        videoUrl: "https://example.com/video10",
        text: "Architecture MVVM : séparation logique, vue et modèle.",
        image: "cours10_image.png",
        exemple: "// struct ViewModel: ObservableObject { ... }",
        explication: "MVVM améliore la lisibilité et la maintenance.",
        tableau: "| Élément | Rôle |\n|---|---|\n| ViewModel | Gère les données |",
        mentalCard: "carte_mentale_10.png",
        sections: []
    )
]

