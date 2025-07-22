//
//  ProgressionView.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct ProgressionView: View {
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.customBeige.ignoresSafeArea()
                ScrollView(showsIndicators: false) {
                    GeometryReader { geometry in
                        let availableHeight = geometry.size.height
                        let optimalSpacing = availableHeight > 700 ? 24 : 16
                        
                            LazyVStack(spacing: CGFloat(optimalSpacing)) {
                                ProgressionCercle(progress: 0.62)
                                    .padding(.top, 8)
                                
                                CarouselCustomCourse()
                                CarouselCustomExercice()
                            }
                            .safeAreaInset(edge: .bottom) {
                                Color.clear.frame(height: 60)
                            }
                        .scrollBounceBehavior(.basedOnSize)
                    }
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
