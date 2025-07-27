//
//  ProgressionView.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct ProgressionView: View {
    @Environment(UserManager.self) private var userManager
    var body: some View {
        NavigationStack {
            ZStack {
                Color.customBeige.ignoresSafeArea()
                ScrollView(showsIndicators: false) {
                    ProgressionCercle(progress: userManager.currentUser.coursProgressPercent)
                    CarouselCustomCourse()
                    CarouselCustomExercice()
                }
            }
            .navigationTitle("Mon parcours")
            .navigationBarTitleDisplayMode(.automatic)
            .preferredColorScheme(nil)
        }
    }
}

#Preview {
    ProgressionView()
        .environment(UserManager())
        .environment(CourseManager())
}
