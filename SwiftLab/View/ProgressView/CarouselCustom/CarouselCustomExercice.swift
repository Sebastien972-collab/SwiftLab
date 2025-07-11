//
//  CarouselCustomExercice.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct CarouselCustomExercice: View {
    
    @State var exercices = ExoDatas.allExercices
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 16) {
                ForEach(exercices, id: \.self) { exercice in
                    NavigationLink {
                        ExerciceSoloView()
                    } label: {
                        CardExerciceView(exercice: exercice)
                    }

                }
            }
        }
        .padding()
    }
}

#Preview {
    NavigationStack {
        CarouselCustomExercice()
    }
}
