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
    var videoUrl: String?
    var text: String
    var image: String
    var mentalCard: String
    var section: [SectionOfCourses] = []
    
    
    var isFinished: Bool = false
    var isInProgress: Bool = false
    
    
    static func == (lhs: Course, rhs: Course) -> Bool {
        lhs.title == rhs.title && lhs.text == rhs.text
    }
    
}







extension Course {
    static let allCourses: [Course] = [
        Course(
            id: UUID(),
            title: "Introduction à Swift",
            videoUrl: "https://example.com/video1",
            text: "Découverte du langage Swift, son historique et ses avantages.",
            image: "cours1_image.png",
            mentalCard: "carte_mentale_1.png",
            section: [
                SectionOfCourses(title: "Text Cours", text: """
                    Swift est un langage moderne, sécurisé et performant, développé par Apple et présenté pour la première fois en 2014. Il a été conçu pour remplacer Objective-C, avec l’ambition d’apporter simplicité, sécurité et rapidité au développement sur les plateformes Apple.

                    En 2019, Apple introduit **SwiftUI**, un nouveau framework qui permet de construire des interfaces utilisateur de manière **déclarative**. Plutôt que de dire comment construire l’interface (comme en UIKit), on décrit simplement **ce qu’on
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
            title: "Variables et constantes",
            videoUrl: "https://example.com/video2",
            text: "Apprenez à déclarer des variables et des constantes en Swift.",
            image: "cours2_image.png",
            mentalCard: "carte_mentale_2.png",
        ),
        Course(
            id: UUID(),
            title: "Types de données",
            videoUrl: "https://example.com/video3",
            text: "Comprendre les types de base comme Int, String, Bool.",
            image: "cours3_image.png",
            mentalCard: "carte_mentale_3.png",
        ),
        Course(
            id: UUID(),
            title: "Opérateurs",
            videoUrl: "https://example.com/video4",
            text: "Addition, soustraction, comparaison et logique.",
            image: "cours4_image.png",
            mentalCard: "carte_mentale_4.png",
        ),
        Course(
            id: UUID(),
            title: "Conditions",
            videoUrl: "https://example.com/video5",
            text: "Utilisation de if, else et switch.",
            image: "cours5_image.png",
            mentalCard: "carte_mentale_5.png",
        ),
        Course(
            id: UUID(),
            title: "Boucles",
            videoUrl: "https://example.com/video6",
            text: "Répéter des actions avec for et while.",
            image: "cours6_image.png",
            mentalCard: "carte_mentale_6.png",
        ),
        Course(
            id: UUID(),
            title: "Fonctions",
            videoUrl: "https://example.com/video7",
            text: "Définir et appeler des fonctions en Swift.",
            image: "cours7_image.png",
            mentalCard: "carte_mentale_7.png",
        ),
        Course(
            id: UUID(),
            title: "Closures",
            videoUrl: "https://example.com/video8",
            text: "Comprendre les fonctions anonymes (closures).",
            image: "cours8_image.png",
            mentalCard: "carte_mentale_8.png",
        ),
        Course(
            id: UUID(),
            title: "SwiftUI Introduction",
            videoUrl: "https://example.com/video9",
            text: "Premiers pas avec SwiftUI et sa structure déclarative.",
            image: "cours9_image.png",
            mentalCard: "carte_mentale_9.png",
        ),
        Course(
            id: UUID(),
            title: "MVVM",
            videoUrl: "https://example.com/video10",
            text: "Architecture MVVM : séparation logique, vue et modèle.",
            image: "cours10_image.png",
            mentalCard: "carte_mentale_10.png",
        )
    ]
}
