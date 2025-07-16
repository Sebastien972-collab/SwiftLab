//
//  ContentView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 04/07/2025.
//

import SwiftUI
import SwiftData

struct MainTabView: View {
    enum Selection {
        case courses, game, coursesListe, profile
    }
    @State private var selection = Selection.courses
    @Environment(\.modelContext) private var modelContext
    var body: some View {
        TabView {
            Tab("Mon parcours", systemImage: "graduationcap.fill") {
               ProgressionView()
            }
            Tab("Jeux", systemImage: "gamecontroller.fill") {
                Text("Mon parcours")
            }
            Tab("Ressources", systemImage: "books.vertical.fill") {
                Text("Mes cours")
            }
            Tab("Profil", systemImage: "person.fill") {
                ProfilView()
            }
        }
    }
}

#Preview {
    MainTabView()
    
}
