//
//  BadgesData.swift
//  SwiftLab
//
//  Created by Thibault on 22/07/2025.
//

import SwiftUI

struct Badge: Identifiable {
    let id = UUID()
    let title: String
    let systemImage: String
    let isUnlocked: Bool
}

let badges: [Badge] = [
    Badge(title: "Premier cours", systemImage: "book.fill", isUnlocked: true),
    Badge(title: "Premier exercice", systemImage: "inset.filled.rectangle.and.person.filled", isUnlocked: true),
    Badge(title: "Code parfait", systemImage: "checkmark.seal.fill", isUnlocked: true),
    Badge(title: "Swift Avancé", systemImage: "swift", isUnlocked: true),
    Badge(title: "Corrigé consulté", systemImage: "doc.text.magnifyingglass", isUnlocked: true),
    Badge(title: "Cours revu", systemImage: "book.circle.fill", isUnlocked: true),
    Badge(title: "Exercice refait", systemImage: "arrow.counterclockwise.circle.fill", isUnlocked: true),
    Badge(title: "Amis fidèles", systemImage: "person.2.fill", isUnlocked: true),
    Badge(title: "Coopération", systemImage: "person.3.fill", isUnlocked: false),
    Badge(title: "Cours débloqué", systemImage: "lock.open.fill", isUnlocked: false),
    Badge(title: "Exercice débloqué", systemImage: "lock.open", isUnlocked: false),
    Badge(title: "Débogueur", systemImage: "ladybug.fill", isUnlocked: false),
    Badge(title: "Compilateur maître", systemImage: "gearshape.2.fill", isUnlocked: false),
    Badge(title: "Première app", systemImage: "app.fill", isUnlocked: false),
    Badge(title: "Challenge accepté", systemImage: "bolt.fill", isUnlocked: false),
    Badge(title: "SwiftUI débutant", systemImage: "rectangle.3.offgrid.fill", isUnlocked: false),
    Badge(title: "UIKit exploré", systemImage: "square.stack.3d.up.fill", isUnlocked: false),
    Badge(title: "Premier commit", systemImage: "tray.and.arrow.up.fill", isUnlocked: false),
    Badge(title: "Git expert", systemImage: "arrow.branch", isUnlocked: false),
    Badge(title: "Async-await", systemImage: "clock.arrow.circlepath", isUnlocked: false),
    Badge(title: "JSON maîtrisé", systemImage: "curlybraces.square", isUnlocked: false),
    Badge(title: "API consommée", systemImage: "network", isUnlocked: false),
    Badge(title: "UI animée", systemImage: "sparkles", isUnlocked: false),
    Badge(title: "Dark mode prêt", systemImage: "moon.stars.fill", isUnlocked: false),
    Badge(title: "Clean Code", systemImage: "wand.and.stars", isUnlocked: false),
    Badge(title: "MVVM utilisé", systemImage: "cube.fill", isUnlocked: false),
    Badge(title: "Navigation fluide", systemImage: "arrowshape.turn.up.right.fill", isUnlocked: false),
    Badge(title: "Formulaire complet", systemImage: "doc.plaintext.fill", isUnlocked: false),
    Badge(title: "Image intégrée", systemImage: "photo.fill", isUnlocked: false),
    Badge(title: "Design system", systemImage: "paintbrush.fill", isUnlocked: false),
    Badge(title: "Prototypage rapide", systemImage: "timer", isUnlocked: false),
    Badge(title: "Performance boost", systemImage: "speedometer", isUnlocked: false),
    Badge(title: "Xcode", systemImage: "hammer.fill", isUnlocked: false),
    Badge(title: "Premier test", systemImage: "checkmark.circle.fill", isUnlocked: false),
    Badge(title: "Tests automatisés", systemImage: "gearshape.fill" , isUnlocked: false),
    Badge(title: "Accessibilité", systemImage: "figure.walk.circle.fill", isUnlocked: false),
]
