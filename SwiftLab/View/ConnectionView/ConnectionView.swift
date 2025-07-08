//
//  ConnectionView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct ConnectionView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.background.ignoresSafeArea()
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
                        ContinueButtonView(title: "Connexion", action: { })
                            .navigationDestination(isPresented: .constant(false)) {
                                Text("Connection")
                            }
                        ContinueButtonView(title: "Inscription", color: .white, action: {})
                            .navigationDestination(isPresented: .constant(false)) {
                                Text("Connection")
                            }
                    }
                    
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Continuer en tant qu'invité")
                            .underline()
                            .foregroundStyle(.black)
                            .bold()
                    }
                    
                    
                    
                }
            }
        }
    }
}

#Preview {
    ConnectionView()
}
