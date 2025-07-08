//
//  CustomSecureField.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding var password: String
    var body: some View {
       SecureField("Password", text: $password)
            .padding(.horizontal, 20)
            .frame(maxWidth: 300, maxHeight: 50)
            .background(Color.white)
            .clipShape(Capsule())
            .overlay(content: {
                Capsule()
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
            })
            .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
            .padding(.horizontal)
            
                
    }
}

#Preview {
    CustomSecureField(password: .constant("Password"))
}
