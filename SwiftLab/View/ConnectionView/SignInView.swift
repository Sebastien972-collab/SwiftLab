//
//  SignInView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 09/07/2025.
//

import SwiftUI

struct SignInView: View {
    @Binding var manager: ConnectionManager
    enum Champs {
    case username, password
    }
    @FocusState private var activeField: Champs?
    var body: some View {
        ZStack {
            Color.customBeige.ignoresSafeArea(edges: .all)
            VStack {
                Spacer()
                VStack(spacing: 20) {
                    CustomTextField(placeholder: "Email", text: $manager.username)
                        .focused($activeField, equals: .username)
                        .submitLabel(.next)
                        .onSubmit {
                            activeField = .password
                        }
                    CustomSecureField(password: $manager.password)
                        .focused($activeField, equals: .password)
                        .submitLabel(.send)
                        .onSubmit {
                            activeField = nil
                            withAnimation {
                                manager.logInUser()
                            }
                        }
                    
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
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button {
                        withAnimation {
                            activeField = nil
                        }
                    } label: {
                        Text("Ok")
                    }

                }
            }
        }

    }
}

#Preview {
    NavigationStack {
        SignInView(manager: .constant(.init()))
    }
}
