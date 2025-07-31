//
//  CustomButtonView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct CustomButtonView: View {
    var title: String
    var action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .foregroundStyle(.black)
                .padding()
                .frame(maxWidth: 150, maxHeight: 35)
                .background(Color.white)
                .clipShape(Capsule())
                .overlay {
                    Capsule()
                        .stroke(Color.black, lineWidth: 1)
                }
        }
        
    }
}

#Preview {
    ZStack {
        Color.customBeige.ignoresSafeArea(.all)
        CustomButtonView(title: "Déconnecter", action: {})
    }
}
