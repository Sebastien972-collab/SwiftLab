//
//  AllCorrectionListView.swift
//  SwiftLab
//
//  Created by cyrilH on 18/07/2025.
//

import SwiftUI

struct AllCorrectionListView: View {
    @State var corrections = ExoDatas.allExercices
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        
    ]
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                LazyVGrid(columns: columns, spacing: 20){
                    
                    ForEach(corrections,id:\.self) { correction in
                        NavigationLink {
                            CorrectionExerciceView(manager: ExerciceSoloManager(exercices: correction))
                        } label:{
                            CardCorrectionView(correction: correction)
                        }
                    }
                }
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 16)
        .navigationTitle("Liste des corrections")
        .navigationBarTitleDisplayMode(.large)
        .background(Color.customBeige.ignoresSafeArea())
    }
}

#Preview {
    NavigationStack {
        ZStack {
            Color.customBeige.ignoresSafeArea()
            AllCorrectionListView()
        }
    }
}
