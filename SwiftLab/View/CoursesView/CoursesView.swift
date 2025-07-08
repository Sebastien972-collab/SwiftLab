//
//  CoursesView.swift
//  SwiftLab
//
//  Created by Thibault on 08/07/2025.
//

import SwiftUI

struct CoursesView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Revoir les cours")
                        .fontWeight(.bold)
                    Spacer()
                    Text("Voir tout les cours")
                }
                HStack {
                    Text("Refaire les exercices")
                        .fontWeight(.bold)
                    Spacer()
                    Text("Voir tout les exercices")
                }
                HStack {
                    Text("Correction des exercices")
                        .fontWeight(.bold)
                    Spacer()
                    Text("Voir toutes les corrections")
                }
            }
        }
    }
}

#Preview {
    CoursesView()
}
