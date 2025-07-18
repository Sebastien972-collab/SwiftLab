//
//  CarouselCorrection.swift
//  SwiftLab
//
//  Created by cyrilH on 17/07/2025.
//

import SwiftUI

struct CarouselCorrection: View {
    var body: some View {
        VStack{
            HStack{
                Text("Corrections")
                    .fontWeight(.medium)
                    Spacer()
                Text("Voir tous")
                    .font(.footnote)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                //
            } .padding(.horizontal)
            ScrollView(.horizontal,showsIndicators: false ){
               
                HStack(spacing : 16){
//                    forEach ici
                    CardCorrectionView()
                    CardCorrectionView()
                    CardCorrectionView()
                    CardCorrectionView()
                }
            }.contentMargins(.horizontal, 16)
            
            
        }
       
    }
}

#Preview {
    CarouselCorrection()
}
