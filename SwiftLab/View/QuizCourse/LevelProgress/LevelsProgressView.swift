//
//  LevelsProgressView.swift
//  SwiftLab
//
//  Created by Dembo on 24/07/2025.
//

import SwiftUI

struct LevelsProgressView: View {
    
    let levels: [Level] // mon ajour !!!!!!!!!!!
    
    @Binding var selectedLevel: Int
    @Binding var questionIndex: Int
   
    
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                ForEach(levels){ level in
                    LevelView(level: level, selectedLevel: $selectedLevel, questionIndex: $questionIndex, isLast : level == levels.last ?? level)
                    
                }
            }
        }
    }
}

#Preview {
    ProgressMapView()
}


// le code que j'ai remplacé
//LevelView(level, selectedLevel: $selectedLevel, questionIndex: $questionIndex, islast : level == levels.last ?? level)
