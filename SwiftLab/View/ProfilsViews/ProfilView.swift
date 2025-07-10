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
                ScrollView {
                    VStack {
                        CircleImageProfil(url: manager.userManager.currentUser.imageUrl)
                        Text(manager.userManager.currentUser.username)
                            .font(.title)
                            .bold()
                        Spacer()
                        VStack(alignment: .leading) {
                            Text("Choix du programme: ")
                                .font(.title2)
                                .bold()
                            HStack {
                                
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }
                    .navigationTitle(Text("Mon compte"))
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button {
                                
                            } label: {
                                Image(systemName: "power")
                                    .foregroundStyle(.black)
                                    .bold()
                            }

                            
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    ProfilView()
}
