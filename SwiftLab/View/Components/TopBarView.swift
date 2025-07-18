//
//  TopBarView.swift
//  SwiftLab
//
//  Created by Sébastien Daguin on 18/07/2025.
//

import SwiftUI

struct TopBarView: View {
    let title: String
    var userManager: UserManager = .init()
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .bold()
            Spacer()
            CircleImageProfil(url: userManager.currentUser.imageUrl)
                .frame(width: 80, height: 80)
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    TopBarView(title: "Cours")
}
