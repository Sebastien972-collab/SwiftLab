//
//  CorrectionExercieView.swift
//  SwiftLab
//
//  Created by cyrilH on 17/07/2025.
//

import SwiftUI

struct CorrectionExercieView: View {
    var body: some View {
        ZStack{
            Color.customBeige.ignoresSafeArea(.all)
            VStack{
                HStack{
                    VStack{
                        Text("correction")
                            .font(.title)
                            .bold()
                            .padding(.horizontal)
                    }
                    Spacer()
                }
                //affichage page suivante ou fin
            }
           
        }
        
    }
}

#Preview {
    CorrectionExercieView()
}
