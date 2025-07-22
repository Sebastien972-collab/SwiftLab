// BadgesListView.swift
// SwiftLab
//
// Created by Thibault on 21/07/2025.
//

import SwiftUI

struct BadgesListView: View {
    
    let columns = Array(repeating: GridItem(.flexible(), spacing: 16), count: 4)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(badges) { badge in
                    VStack {
                        ZStack {
                            Circle()
                                .fill(Color.gray.opacity(0.2))
                                .frame(width: 60, height: 60)
                            Image(systemName: badge.systemImage)
                                .font(.system(size: 24))
                                .foregroundColor(badge.isUnlocked ? .accentColor : .gray)
                        }
                        Text(badge.title)
                            .frame(height: 40)
                            .font(.caption)
                            .multilineTextAlignment(.center)
                            .frame(width: 80)
                            .foregroundColor(badge.isUnlocked ? .primary : .gray)
                    }
                    .frame(width: 70, height: 100)
                    .padding(10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    BadgesListView()
}
