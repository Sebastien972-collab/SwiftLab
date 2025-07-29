//
//  ContentView.swift
//  SwiftLab
//
//  Created by Dembo on 25/07/2025.
//

import SwiftUI

struct ProgressMapView: View {
   
    @Environment(ProgressMapManager.self) private var progressMapManager
    var body: some View {
        NavigationView{
            LevelsProgressView(levels: progressManager.levels, selectedLevel: $progressManager.selectedLevel, questionIndex: $progressManager.questionIndex)
                .navigationTitle("Progess Map")
        }
        .tint(.indigo)
    }
}

#Preview {
    ProgressMapView()
        .environment(ProgressMapManager())
}
