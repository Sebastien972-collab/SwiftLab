//
//  LevelsProgressView.swift
//  SwiftLab
//
//  Created by Dembo on 24/07/2025.
//

import SwiftUI

struct LevelsProgressView: View {
    @Environment(ProgressMapManager.self) private var progressMapManager
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(progressMapManager.levels) { level in
                    LevelView(
                        level: level,
                        selectedLevel: $progressMapManager.selectedLevel, questionIndex: $progressMapManager.questionIndex, isLast: level == progressMapManager.levels.last)
                }
            }
        }
    }
}



// le code que j'ai remplacé
//LevelView(level, selectedLevel: $selectedLevel, questionIndex: $questionIndex, islast : level == levels.last ?? level)
