//
//  RessourcesView.swift
//  SwiftLab
//
//  Created by Thibault on 18/07/2025.
//

import SwiftUI

struct RessourcesView: View {
    var body: some View {
       
      
        VStack(alignment: .leading, spacing: 16) {
            
         
            
      
            RedoCoursesListView()
            RedoExercisesListView()
            CorrectionsListView()
       
            
        }.navigationTitle("Ressources")
        
    }
}

#Preview {
    
    NavigationStack {
        ZStack {
            Color.customBeige.ignoresSafeArea()
            RessourcesView()
        }
    }
}
