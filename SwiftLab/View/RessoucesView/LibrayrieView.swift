//
//  LibrayrieView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 17/07/2025.
//

import SwiftUI

struct TableauView: View {
    let entêtes = ["Nom", "Âge", "Ville"]
    let données = [
        ["Alice", "30", "Paris"],
        ["Bob", "25", "Lyon"],
        ["Sophie", "28", "Toulouse"]
    ]

    var body: some View {
        VStack(spacing: 1) {
            // Entêtes
            HStack {
                ForEach(entêtes, id: \.self) { titre in
                    Text(titre)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                }
            }

            // Lignes
            ForEach(données, id: \.self) { ligne in
                HStack {
                    ForEach(ligne, id: \.self) { cellule in
                        Text(cellule)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .border(Color.gray.opacity(0.3))
                    }
                }
            }
        }
        .padding()
        .background(Color(.systemGroupedBackground))
    }
}


#Preview {
//    LibrayrieView()
    TableauView()
}
