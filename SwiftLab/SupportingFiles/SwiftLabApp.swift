//
//  SwiftLabApp.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 04/07/2025.
//

import SwiftUI
import SwiftData

@main
struct SwiftLabApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    @State private var userManager: UserManager = .init()
    @State private var courseManager: CourseManager = .init()
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .preferredColorScheme(.light)
                .onAppear {
                    courseManager.userManager = userManager
                }
                .environment(userManager)
                .environment(courseManager)
        }
        .modelContainer(sharedModelContainer)
    }
}
