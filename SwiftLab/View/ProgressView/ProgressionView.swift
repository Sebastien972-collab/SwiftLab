//
//  ProgressionView.swift
//  SwiftLab
//
//  Created by Dembo on 08/07/2025.
//

import SwiftUI

struct ProgressionView: View {
    @Environment(UserManager.self) private var userManager
    @Environment(CourseManager.self) private var courseManager
    var body: some View {
        NavigationStack {
            ZStack {
                Color.customBeige.ignoresSafeArea()
                ScrollView(showsIndicators: false) {
                    ProgressionCercle(progress: courseManager.coursProgressPercent )
                    CarouselCustomCourse(courses: courseManager.coursesInProgress)
                    CarouselCustomExercice()
                }
            }
            .onAppear(perform: {
                courseManager.refreshCourse()
            })
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
