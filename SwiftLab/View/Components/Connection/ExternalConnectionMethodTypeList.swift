//
//  ExternalConnectionMethodTypeList.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct ExternalConnectionMethodTypeList: View {
    enum Selection: String {
    case signIn = "Se connecter avec"
    case signUp = "Créer un compte avec"
    }
    var selection: Selection = .signUp
    var body: some View {
        VStack(spacing: 20) {
            Text(selection.rawValue)
                .foregroundStyle(.secondary)
            HStack(spacing: 10) {
                ConnectionButtonView(imageName: "googleLogo")
                ConnectionButtonView(imageName: "facebookLogo")
                ConnectionButtonView(imageName: "appleLogo")
                
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ZStack {
        Color.background.ignoresSafeArea(edges: .all)
        ExternalConnectionMethodTypeList()
    }
}
