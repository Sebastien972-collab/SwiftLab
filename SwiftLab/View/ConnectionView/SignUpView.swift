//
//  SignUpView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct SignUpView: View {
    @Binding var manager: ConnectionManager
    enum Champs {
    case username, password
    }
    @FocusState private var activeChamp: Champs?
    var body: some View {
        ZStack {
            Color.customBeige.ignoresSafeArea(edges: .all)
            VStack {
                Spacer()
                VStack(spacing: 20) {
                    CustomTextField(placeholder: "Username", text: $manager.username)
                        .focused($activeChamp, equals: .username)
                        .submitLabel(.next)
                        .onSubmit {
                            activeChamp = .password
                        }
                    CustomSecureField(password: $manager.password)
                        .focused( $activeChamp, equals: .password)
                        .submitLabel(.send)
                        .onSubmit {
                            activeChamp = nil
                            withAnimation {
                                manager.signUp()
                            }
                        }
                    
                }
                Spacer()
                ContinueButtonView(title: "Créer un compte", action: {
                    withAnimation {
                        manager.signUp()
                    }
                })
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
            .alert(
                isPresented: $manager.showError,
                error: manager.error
            ) { error in
                Button("OK", role: .cancel) {
                    manager.showError = false
                }
            } message: { error in
                Text(error.recoverySuggestion ?? "Désolé, un problème est survenu. Veuillez réessayer ultérieurement.")
            }
        }
        
        
    }
}

#Preview {
    NavigationStack {
        SignUpView(manager: .constant(ConnectionManager()))
    }
}
