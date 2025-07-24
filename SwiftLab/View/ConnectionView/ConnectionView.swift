//
//  ConnectionView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct ConnectionView: View {
    @Environment(UserManager.self) private var userManager
    @State private var manager = ConnectionManager()
    @State private var signInViewisPresented: Bool = false
    @State private var registerViewisPresented: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.customBeige.ignoresSafeArea()
                VStack(alignment: .center) {
                    Spacer()
                    Text("SwiftLab")
                        .font(.title)
                        .bold()
                    Image(.logoApp)
                        .resizable()
                        .frame(width: 300, height: 300)
                        .padding(.trailing, 5)
                    
                    
                    VStack(spacing: 15) {
                        ContinueButtonView(title: "Connexion", action: {
                            manager.userManager = userManager
                            signInViewisPresented.toggle()
                        })
                        .navigationDestination(isPresented: $signInViewisPresented) {
                            SignInView(manager: $manager)
                        }
                        ContinueButtonView(title: "Inscription", color: .white, action: {
                            manager.userManager = userManager
                            registerViewisPresented.toggle()
                        })
                        .navigationDestination(isPresented: $registerViewisPresented) {
                            SignUpView(manager: $manager)
                        }
                    }
                    
                    Spacer()
                    GuestContinueButton {
                        manager.userManager = userManager
                        manager.loginInGest()
                    }
                }
            }
        }
    }
}

#Preview {
    ConnectionView()
        .environment(UserManager())
}
