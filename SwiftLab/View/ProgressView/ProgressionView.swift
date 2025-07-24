//
//  ProgressionView.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct ProgressionView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.customBeige.ignoresSafeArea()
                ScrollView(showsIndicators: false) {
                    ProgressionCercle(progress: 0.62)
                    CarouselCustomCourse()
                    CarouselCustomExercice()
                }
            }
            .navigationTitle("Mon parcours")
            .navigationBarTitleDisplayMode(.automatic)
            .preferredColorScheme(nil)
        }
    }
}

#Preview {
    ProgressionView()
}
