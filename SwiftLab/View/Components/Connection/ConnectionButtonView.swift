//
//  ConnectionButtonView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct ConnectionButtonView: View {
    let imageName: String
    
    var body: some View {
        Button {
            
        } label: {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
            
            
        }
        .frame(width: 110, height: 60)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
        
    }
}

#Preview {
    ZStack {
        Color.customBeige.ignoresSafeArea(edges: .all)
        ConnectionButtonView(imageName: "googleLogo")
    }
}
