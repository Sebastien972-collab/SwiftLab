//
//  SignUpView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct SignUpView: View {
    @Binding var manager: ConnectionManager
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea(edges: .all)
            VStack {
                Spacer()
                VStack(spacing: 20) {
                    CustomTextField(placeholder: "Username", text: $manager.username)
                    CustomTextField(placeholder: "Email", text: $manager.username)
                    CustomSecureField(password: $manager.password)
                    
                }
                Spacer()
                ContinueButtonView(title: "Créer un compte", action: {})
                VStack {
                    Text("Créer un compte avec")
                        .foregroundStyle(.secondary)
                    
                    HStack {
                        Image(systemName: "apple.logo")
                            .foregroundColor(.blue)
                        Image(systemName: "google.circle")
                            .foregroundColor(.red)
                    }
                }
                Spacer()
            }
            .navigationTitle(Text("Créer un compte"))
        }
    }
}

#Preview {
    NavigationStack {
        SignUpView(manager: .constant(ConnectionManager()))
    }
}
