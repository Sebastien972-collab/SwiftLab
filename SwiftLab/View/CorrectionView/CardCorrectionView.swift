//
//  CardsCorrectionView.swift
//  SwiftLab
//
//  Created by cyrilH on 17/07/2025.
//

import SwiftUI

struct CardCorrectionView: View {
    let correction : Exercices
    var body: some View {
        VStack(alignment:.center, spacing: 10){
            Spacer()
            Image(systemName: "pencil.and.scribble")
                .resizable()
                .foregroundColor(Color.white)
                .frame(width: 24, height: 20)
                .padding(.top,8)
                
            Spacer()
            Text("\(correction.nameOfExercices)")
                .font(.system(size: 16, weight: .medium))
                .lineLimit(nil)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundStyle(.white)
            Spacer()
        }
        .padding(.horizontal)
        .frame(width: 150, height: 140)
        .background(Color.pourpre)
        .clipShape(RoundedRectangle(cornerRadius: 16))

    }
}

#Preview {
    CardCorrectionView(correction: ExoDatas.swiftBasics)
}
