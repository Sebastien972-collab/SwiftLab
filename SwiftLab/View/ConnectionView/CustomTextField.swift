//
//  CustomTextField.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .font(.system(size: 16, weight: .regular, design: .default))
                .padding(.horizontal, 20)
                .frame(maxWidth: 300, maxHeight: 50)
                .background(Color.white)
                .clipShape(Capsule())
                .overlay(content: {
                    Capsule()
                        .stroke(Color.grayBorder.opacity(0.3), lineWidth: 1)
                })
                .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
                .padding(.horizontal)
    }
}

#Preview {
    ZStack {
        Color.background
        CustomTextField(placeholder: "E-Mail", text: .constant(""))
    }
}
