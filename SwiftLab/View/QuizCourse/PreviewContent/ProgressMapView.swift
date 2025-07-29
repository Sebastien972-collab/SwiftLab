//
//  ContentView.swift
//  SwiftLab
//
//  Created by Dembo on 25/07/2025.
//

import SwiftUI

struct ProgressMapView: View {
   
    @State private var progressManager: ProgressMapManager = .init()
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
}
