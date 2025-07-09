//
//  ProgressView.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct ProgressionView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.background.ignoresSafeArea()
                ScrollView {
                    VStack {
                        ProgressionCercle(progress: 0.62)
                        CarouselCustomCourse()
                        CardCourseView()
                        
                    }
                    .padding()
                }
                
            }
            
            .navigationTitle(Text("Progression Globale"))
        }
    }
}

#Preview {
    ProgressionView()
}
