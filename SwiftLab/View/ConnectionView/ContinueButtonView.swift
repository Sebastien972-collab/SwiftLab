//
//  ContinueButtonView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct ContinueButtonView: View {
    let title: String
    var color: Color = Color.customClearOrange
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.headline)
                .foregroundColor(color != Color.white ? .white : .black)
                .frame(maxWidth: 300, maxHeight: 30)
                .padding()
                .background(color)
                .clipShape(Capsule())
        }

    }
}

#Preview {
    ContinueButtonView(title: "Connexion", action: {})
}
