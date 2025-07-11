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
//                    VStack{
//                        Text("\(exercice.exercice)")
//                            .lineLimit(nil)
//                    }
                    NavigationLink {
//                        ExerciceSoloView(exercice: exercice)
                        ExerciceSoloView(manager: ExerciceSoloManager(exercices: exercice))
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
