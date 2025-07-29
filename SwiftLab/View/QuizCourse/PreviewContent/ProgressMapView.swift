//
//  ContentView.swift
//  SwiftLab
//
//  Created by Dembo on 25/07/2025.
//

import SwiftUI

struct ProgressMapView: View {
    @State private var selectedLevel = 0
    @State private var questionIndex = 0
    
    let levels: [Level] = [
        Level(id: 0, questions: [
            Question(question : "Quelle est l’année de sortie du langage Swift ?", possibleAnswers: ["2012", "2014", "2016", "2019"], answerIndex: 1),
            
            Question(question : "Quel est le principal paradigme utilisé par SwiftUI ?", possibleAnswers: ["Orienté Objet", "Réactif", "Déclaratif", "Impératif"], answerIndex: 2),
            
            Question(question : "Quel composant permet de regrouper plusieurs vues verticalement ?", possibleAnswers: ["HStack", "ZStack", "VStack", "List"], answerIndex: 1),
            
            Question(question : "Quel est le rôle du mot-clé @main dans une app SwiftUI ?", possibleAnswers: ["Déclarer une variable globale", "Définir le point d’entrée de l’application", "Indiquer une constante", "Lancer une animation"], answerIndex: 2),
            
            Question(question : "À quoi sert .foregroundColor(.blue) dans SwiftUI ?", possibleAnswers: ["Changer la couleur du fond", "Ajouter une image", "Changer la couleur du texte", "Modifier la couleur de l’écran"], answerIndex: 2),
        ]),
        
        
        Level(id: 1, questions: [
            Question(question : "Quel mot-clé déclare une constante ?", possibleAnswers: ["var", "let", "const", "final"], answerIndex: 1),
            
            Question(question : "Lequel de ces types représente une valeur vraie ou fausse ?", possibleAnswers: ["Int", "Bool", "String", "Double"], answerIndex: 1),
            
            Question(question : "Quel type est automatiquement utilisé pour Bonjour ?", possibleAnswers: ["String", "Char", "Text", "Label"], answerIndex: 0),
            
            Question(question : "Que se passe-t-il si on essaie de modifier une constante let ?", possibleAnswers: ["Elle change de valeur", "Erreur de compilation", "Elle devient une variable", "Rien"], answerIndex: 1),
            
            Question(question : """
                     Quelle est la valeur finale dans ce code ?        
                    ```swift
                     var total = 10
                     total += 5```
                    """,possibleAnswers: ["10", "11", "15", "20"], answerIndex: 2),
        ]),
        
        
        Level(id: 2, questions: [
            Question(question : "Quel opérateur donne le reste d’une division ?", possibleAnswers: ["/", "%", "*", "=="], answerIndex: 1),
            
            Question(question : "Quel est le résultat de 5 > 3 ?", possibleAnswers: ["true", "false", "nil", "1"], answerIndex: 1),
            
            Question(question : "Que retourne true && false ?", possibleAnswers: ["true", "false", "Text", "Label"], answerIndex: 0),
            
            Question(question : "Quel opérateur signifie “différent de” ?", possibleAnswers: ["=", "===", "!=", "<>"], answerIndex: 2),
            
            Question(question : """
                     Quelle est la valeur finale ici ?        
                    ```swift
                    var nombre = 4
                    nombre *= 2```
                    """,possibleAnswers: ["4", "6", "8", "2"], answerIndex: 2),
        ]),
        
        
        Level(id: 3, questions: [
            Question(question : "Quelle structure permet de tester plusieurs cas ?", possibleAnswers: ["if", "else", "switch", "repeat"], answerIndex: 2),
            
            Question(question : "Combien de fois s'exécute une boucle repeat while au minimum ?", possibleAnswers: ["0", "1", "2", "Cela dépend"], answerIndex: 1),
            
            Question(question : "Quelle boucle est idéale pour répéter un bloc un nombre précis de fois ?", possibleAnswers: ["for-in", "while", "repeat", "if"], answerIndex: 0),
            
            Question(question : "Que se passe-t-il si on oublie default dans un switch ?", possibleAnswers: ["Le code plante", "Erreur de compilation si tous les cas ne sont pas couverts", "Rien", "Swift choisit un cas au hasard"], answerIndex: 1),
            
            Question(question : """
                     Quel est le résultat de ce code ?       
                    ```swift
                    let x = 5

                    if x < 3 {
                        print("Petit")
                    } else {
                        print("Grand")
                    }```
                    """,possibleAnswers: ["Petit", "Grand", "Erreur", "5"], answerIndex: 1),
        ]),
        Level(id: 4, questions: [
            Question(question : "Quelle est l’année de sortie du langage Swift ?", possibleAnswers: ["2012", "2014", "2016", "2019"], answerIndex: 1),
            
            Question(question : "Quel est le principal paradigme utilisé par SwiftUI ?", possibleAnswers: ["Orienté Objet", "Réactif", "Déclaratif", "Impératif"], answerIndex: 2),
            
            Question(question : "Quel composant permet de regrouper plusieurs vues verticalement ?", possibleAnswers: ["HStack", "ZStack", "VStack", "List"], answerIndex: 1),
            
            Question(question : "Quel est le rôle du mot-clé @main dans une app SwiftUI ?", possibleAnswers: ["Déclarer une variable globale", "Définir le point d’entrée de l’application", "Indiquer une constante", "Lancer une animation"], answerIndex: 2),
            
            Question(question : "À quoi sert .foregroundColor(.blue) dans SwiftUI ?", possibleAnswers: ["Changer la couleur du fond", "Ajouter une image", "Changer la couleur du texte", "Modifier la couleur de l’écran"], answerIndex: 2),
        ]),
        
        
        Level(id: 5, questions: [
            Question(question : "Quel mot-clé déclare une constante ?", possibleAnswers: ["var", "let", "const", "final"], answerIndex: 1),
            
            Question(question : "Lequel de ces types représente une valeur vraie ou fausse ?", possibleAnswers: ["Int", "Bool", "String", "Double"], answerIndex: 1),
            
            Question(question : "Quel type est automatiquement utilisé pour Bonjour ?", possibleAnswers: ["String", "Char", "Text", "Label"], answerIndex: 0),
            
            Question(question : "Que se passe-t-il si on essaie de modifier une constante let ?", possibleAnswers: ["Elle change de valeur", "Erreur de compilation", "Elle devient une variable", "Rien"], answerIndex: 1),
            
            Question(question : """
                     Quelle est la valeur finale dans ce code ?        
                    ```swift
                     var total = 10
                     total += 5```
                    """,possibleAnswers: ["10", "11", "15", "20"], answerIndex: 2),
        ]),
        
        
        Level(id: 6, questions: [
            Question(question : "Quel opérateur donne le reste d’une division ?", possibleAnswers: ["/", "%", "*", "=="], answerIndex: 1),
            
            Question(question : "Quel est le résultat de 5 > 3 ?", possibleAnswers: ["true", "false", "nil", "1"], answerIndex: 1),
            
            Question(question : "Que retourne true && false ?", possibleAnswers: ["true", "false", "Text", "Label"], answerIndex: 0),
            
            Question(question : "Quel opérateur signifie “différent de” ?", possibleAnswers: ["=", "===", "!=", "<>"], answerIndex: 2),
            
            Question(question : """
                     Quelle est la valeur finale ici ?        
                    ```swift
                    var nombre = 4
                    nombre *= 2```
                    """,possibleAnswers: ["4", "6", "8", "2"], answerIndex: 2),
        ]),
        
        
        Level(id: 7, questions: [
            Question(question : "Quelle structure permet de tester plusieurs cas ?", possibleAnswers: ["if", "else", "switch", "repeat"], answerIndex: 2),
            
            Question(question : "Combien de fois s'exécute une boucle repeat while au minimum ?", possibleAnswers: ["0", "1", "2", "Cela dépend"], answerIndex: 1),
            
            Question(question : "Quelle boucle est idéale pour répéter un bloc un nombre précis de fois ?", possibleAnswers: ["for-in", "while", "repeat", "if"], answerIndex: 0),
            
            Question(question : "Que se passe-t-il si on oublie default dans un switch ?", possibleAnswers: ["Le code plante", "Erreur de compilation si tous les cas ne sont pas couverts", "Rien", "Swift choisit un cas au hasard"], answerIndex: 1),
            
            Question(question : """
                     Quel est le résultat de ce code ?       
                    ```swift
                    let x = 5

                    if x < 3 {
                        print("Petit")
                    } else {
                        print("Grand")
                    }```
                    """,possibleAnswers: ["Petit", "Grand", "Erreur", "5"], answerIndex: 1),
        ]),
    ]
    
    

    var body: some View {
        NavigationView{
            LevelsProgressView(levels: levels, selectedLevel: $selectedLevel, questionIndex: $questionIndex)
                .navigationTitle("Progess Map")
        }
        .tint(.indigo)
    }
}

#Preview {
    ProgressMapView()
}
