//
//  CardExerciceView.swift
//  SwiftLab
//
//  Created by cyrilH on 09/07/2025.
//

import SwiftUI

struct CardExerciceView: View {
    @State var managerExercice = ExerciceSoloManager(exercice: swiftBasics)
    @State private var progress: Double = 0.5
    
    var body: some View {
        VStack(alignment: .leading) {
            // icons
            Image("exerciceIcons")
                .resizable()
                .frame(width: 24, height: 24)
                .padding(.top, 12.0)
            
            // Titre
            VStack{
                Text(managerExercice.currentExercice.nameOfExercices)
                    .font(.system(size: 16, weight: .medium))
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.black)
                    
            }
            Spacer()
            
            // Texte de progression
            Text("progression \(100)%")
                .font(.caption)
                .foregroundStyle(.black.opacity(0.7))
            
            // Barre de progression
            
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle())
                .padding(.bottom, 10.0)
                .accentColor(.black)
                
                
        }
        .padding(.horizontal, 16)
        .frame(width: 150, height: 130)
        .background(Color.customClearGreen)
        .clipShape(RoundedRectangle(cornerRadius: 16))

    }
}

#Preview {
    CardExerciceView()
}
