//
//  ContentView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 04/07/2025.
//

import SwiftUI
import SwiftData

struct MainTabView: View {
    private enum Selection {
        case courses, game, coursesListe, profile
    }
    @State private var selection = Selection.courses
    @Environment(\.modelContext) private var modelContext
    @Environment(UserManager.self) private var userManager
    var body: some View {
        if userManager.isConnected {
            TabView {
                Tab("Mon parcours", systemImage: "graduationcap.fill") {
                   ProgressionView()
                }
                Tab("Jeux", systemImage: "gamecontroller.fill") {
                    MultiGamesView()
                }
                Tab("Ressources", systemImage: "books.vertical.fill") {
                    RessourcesView()
                }
                Tab("Profil", systemImage: "person.fill") {
                    ProfilView()
                }
            }
        } else {
            ConnectionView()
        }
    }
}

#Preview {
    MainTabView()
        .environment(UserManager())
}
