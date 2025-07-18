//
//  CarouselCorrection.swift
//  SwiftLab
//
//  Created by cyrilH on 17/07/2025.
//

import SwiftUI

struct CarouselCorrection: View {
    @State var corrections = ExoDatas.allExercices
    var body: some View {
        VStack{
            HStack {
                Text("Revoir les corrections")
                    .font(.title2)
                    .fontWeight(.bold)
               
                Spacer()
                NavigationLink(destination: AllCoursesListView()) {
                    Text("Voir tous")
                        .font(.caption)
                }
            }
            .padding(.horizontal, 20)
            
            ScrollView(.horizontal,showsIndicators: false ){
               
                HStack(spacing : 16){
                    ForEach(corrections,id:\.self) { correction in

                        CardCorrectionView(correction: correction)
                    }
                        
                    
                    
                    
                }
            }.contentMargins(.horizontal, 16)
            
            
        }
       
    }
}

#Preview {
    CarouselCorrection()
}
