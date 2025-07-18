//
//  CardsCorrectionView.swift
//  SwiftLab
//
//  Created by cyrilH on 17/07/2025.
//

import SwiftUI

struct CardCorrectionView: View {
    var body: some View {
        VStack(alignment:.center){
            
            Image(systemName: "pencil.and.scribble")
                .resizable()
                .foregroundColor(Color.white)
                .frame(width: 24, height: 20)
                .padding(.top, 12.0)
                
            
            Text("Les bases de swift - 1")
                .fontWeight(.medium)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 5.0)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.white)
        }
        .padding(.horizontal)
        .frame(width: 150, height: 130)
        .background(Color.pourpre)
        .clipShape(RoundedRectangle(cornerRadius: 16))

    }
}

#Preview {
    CardCorrectionView()
}
