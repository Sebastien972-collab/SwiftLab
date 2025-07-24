//
//  BadgesTitleView.swift
//  SwiftLab
//
//  Created by Thibault on 22/07/2025.
//

import SwiftUI

struct BadgesTitleView: View {
    let title: String
    
    init(title: String = "Badges") {
        self.title = title
    }
    var body: some View {
        HStack {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            Spacer()
            NavigationLink(destination: BadgesListView(badges: Badge.all)) {
                Text("Voir tous")
                    .font(.caption)
            }
        }
        .padding(.horizontal)
    }
}
#Preview {
    BadgesTitleView()
}
