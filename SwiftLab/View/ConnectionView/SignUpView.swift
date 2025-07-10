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
            Color.customBeige.ignoresSafeArea(edges: .all)
            VStack {
                Spacer()
                VStack(spacing: 20) {
                    CustomTextField(placeholder: "Username", text: $manager.username)
                    CustomTextField(placeholder: "Email", text: $manager.username)
                    CustomSecureField(password: $manager.password)
                    
                }
                Spacer()
                ContinueButtonView(title: "Créer un compte", action: {})
                Spacer()
                ExternalConnectionMethodTypeList(selection: .signUp)
                Spacer()
                HStack {
                    Text("Déjà un compte ?")
                    Button {
                    } label: {
                        Text("Se connecter")
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
