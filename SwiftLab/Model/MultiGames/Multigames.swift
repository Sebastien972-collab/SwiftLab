//
//  Multigames.swift
//  SwiftLab
//
//  Created by cyrilH on 24/07/2025.
//

import Foundation

struct Multigames :Identifiable  {
    var id : UUID
    var name : String
    var difficulte : Int
    var description : String
    var goodAnswer : String
    var group : [User]
    var image : String
    var codeBefore : String
    var codeAfter : String
    
    static let exercice1 = Multigames(
        id: UUID() ,
        name: "Déclaration de variable",
        difficulte: 1,
        description: "Complète la déclaration pour créer une variable appelée nom avec la valeur \"Jean\"",
        goodAnswer: """
        var nom = "Jean"
        """,
        group: [],
        image: "sims" ,
        codeBefore: "",
        codeAfter: ""
    )
    
    static let exercice2 = Multigames(
        id: UUID() ,
        name: "Fonction retour",
        difficulte: 2,
        description: "Complète la signature de la fonction pour qu'elle retourne un Int",
        goodAnswer: "Int",
        group: [],
        image: "image1",
        codeBefore: "func somme(a: Int, b: Int) -> ",
        codeAfter: " {\n    return a + b\n}"
    )

   static let exercice3 = Multigames(
        id: UUID() ,
        name: "Boucle for-in",
        difficulte: 2,
        description: "Complète la syntaxe de la boucle for pour parcourir les nombres de 1 à 5",
        goodAnswer: "for i in 1...5",
        group: [],
        image: "image2",
        codeBefore: "",
        codeAfter: " {\n    print(i)\n}"
    )
    static let exercice4 = Multigames(
        id: UUID() ,
        name: "Condition simple",
        difficulte: 2,
        description: "Complète la condition pour vérifier si la variable `age` est supérieure ou égale à 18.",
        goodAnswer: "age >= 18",
        group: [],
        image: "image3",
        codeBefore: "if ",
        codeAfter: " {\n    print(\"Majeur\")\n}"
    )
    static let exercice5 = Multigames(
        id: UUID() ,
        name: "Déclaration de tableau",
        difficulte: 1,
        description: "Complète la déclaration pour créer un tableau d'entiers nommé `nombres` contenant 1, 2 et 3.",
        goodAnswer: "[1, 2, 3]",
        group: [],
        image: "image4",
        codeBefore: "let nombres = ",
        codeAfter: ""
    )
    
    static let exercice6 = Multigames(
        id: UUID() ,
        name: "Parcourir un tableau",
        difficulte: 3,
        description: "Complète la ligne pour parcourir un tableau appelé `fruits` avec une boucle for.",
        goodAnswer: "for fruit in fruits",
        group: [],
        image: "image5",
        codeBefore: "",
        codeAfter: " {\n    print(fruit)\n}"
    )
    
    static let exercice7 = Multigames(
        id: UUID() ,
        name: "Déballage optionnel",
        difficulte: 3,
        description: "Complète la condition pour vérifier si `nom` contient une valeur.",
        goodAnswer: "if let nomDeUtilisateur = nom",
        group: [],
        image: "image6",
        codeBefore: "",
        codeAfter: " {\n    print(nomDeUtilisateur)\n}"
    )
    
    
    static let allGames: [Multigames] = [
        exercice1,
        exercice2,
        exercice3,
        exercice4,
        exercice5,
        exercice6,
        exercice7,

    ]
    
    
}
