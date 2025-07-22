//
//  ProfilView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct ProfilView: View {
    @State var manager = ProfilManager()
    var body: some View {
        NavigationStack {
            ZStack {
                Color.customBeige.ignoresSafeArea()
                VStack {
                    VStack {
                        CircleImageProfil(url: manager.userManager.currentUser.imageUrl)
                        Text(manager.userManager.currentUser.username)
                            .font(.title2)
                    }
                    
                    CarouselCustomCourse(title: "Terminés")
                    
                    BadgesListView()
                }
            }
        }
    }
}


#Preview {
    ProfilView()
}
