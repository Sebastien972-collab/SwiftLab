//
//  InviteButton.swift
//  SwiftLab
//
//  Created by Dembo on 23/07/2025.
//

import SwiftUI

struct InviteButton: View {
    var body: some View {
        Button(action: {
            // Action à exécuter
        }) {
            Text("Inviter")
                .foregroundColor(.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(Color.orange)
                .cornerRadius(20)
        }
    }
}

#Preview {
    InviteButton()
}
