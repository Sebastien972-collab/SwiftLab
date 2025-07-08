//
//  ProgressView.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct ProgressView: View {
    var body: some View {
       NavigationStack {
            ZStack {
               ScrollView {
                    VStack {
                        HStack {
                            
                            Text("Progression Globale :")
                                .font(.system(size: 24))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.7)
                        }
                        .padding()
                        ProgressionCercle(progress: 0.62)
                   }
                }
           }
        }
    }
}

#Preview {
    ProgressView()
}
