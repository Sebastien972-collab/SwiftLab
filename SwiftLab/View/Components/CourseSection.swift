//
//  CourseSection.swift
//  SwiftLab
//
//  Created by Thibault on 08/07/2025.
//
 import SwiftUI

struct CourseSection<Content: View>: View {
    let title: String
    let seeAllText: String
    let content: Content
    
    init(title: String, seeAllText: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.seeAllText = seeAllText
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Titre + "voir tout"
            HStack {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.primary)
                
                Spacer()
                
                Button(action: {
                    // Bouton "voir tout"
                }) {
                    Text(seeAllText)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                        .underline()
                }
            }
                content
        }
    }
}
