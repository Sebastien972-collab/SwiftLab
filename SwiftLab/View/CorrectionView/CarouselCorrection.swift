//
//  CarouselCorrection.swift
//  SwiftLab
//
//  Created by cyrilH on 17/07/2025.
//

import SwiftUI

import SwiftUI

struct CarouselCorrection: View {
    @State var corrections = ExoDatas.allExercices
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Revoir les corrections")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                NavigationLink(destination: AllCorrectionListView()) {
                    Text("Voir tous")
                        .font(.footnote)
                }
            }
            .padding(.horizontal, 20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(corrections, id: \.self) { correction in
                        NavigationLink {
                            CorrectionExerciceView(manager: ExerciceSoloManager(exercices: correction))
                        } label: {
                            CardCorrectionView(correction: correction)
                        }
                    }
                }
                .padding(.vertical, 2)
                .animation(.spring(), value: corrections)
            }
            .contentMargins(.horizontal, 16)
        }
    }
}

#Preview {
    CarouselCorrection()
}
