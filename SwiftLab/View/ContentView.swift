//
//  ContentView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 04/07/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    enum Selection {
        case courses, game, coursesListe, profile
    }
    @State private var selection = Selection.courses
    @Environment(\.modelContext) private var modelContext
    var body: some View {
        TabView {
            Tab("Mon parcours", systemImage: "graduationcap.fill") {
                Text("Mon parcours")
            }
            .badge(2)
            Tab("Jeux", systemImage: "gamecontroller.fill") {
                Text("Mon parcours")
            }
            Tab("Mes cours", systemImage: "books.vertical.fill") {
                Text("Mes cours")
            }
            Tab("Account", systemImage: "person.fill") {
                ProfilView()
            }
            .badge("!")
        }
    }
}

#Preview {
    ContentView()
    
}
