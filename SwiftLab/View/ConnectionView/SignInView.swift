//
//  SignInView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 09/07/2025.
//

import SwiftUI

struct SignInView: View {
    @Binding var manager: ConnectionManager
    var body: some View {
        ZStack {
            Color.customBeige.ignoresSafeArea(edges: .all)
            VStack {
                Spacer()
                VStack(spacing: 20) {
                    CustomTextField(placeholder: "Email", text: $manager.username)
                    CustomSecureField(password: $manager.password)
                    
                }
                Spacer()
                ContinueButtonView(title: "Se connecter", action: {
                    withAnimation {
                        manager.logInUser()
                    }
                })
                Spacer()
                ExternalConnectionMethodTypeList(selection: .signIn)
                Spacer()
                HStack {
                    Text("Avez-vous un compte ?")
                    Button {
                    } label: {
                        Text("Créer un compte")
                    }

                }
                Spacer()
            }
            .navigationTitle(Text("Se connecter"))
            .alert(manager.error?.localizedDescription ?? "Erreur inattendue", isPresented: $manager.showError) {
                Button("OK", role: .cancel) {}
            }
        }

    }
}

#Preview {
    SignInView(manager: .constant(.init()))
}
