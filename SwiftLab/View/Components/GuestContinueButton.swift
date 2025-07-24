//
//  GuestContinueButton.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN on 24/07/2025.
//

import SwiftUI

struct GuestContinueButton: View {
    let action: () -> Void
    
    var body: some View {
        Button {
            let impact = UIImpactFeedbackGenerator(style: .light)
            impact.impactOccurred()
            action()
        } label: {
            Text("Continuer en tant qu'invité")
                .underline()
                .foregroundStyle(.black)
                .bold()
            
        }
    }
}

#Preview {
    GuestContinueButton(action: { })
}
