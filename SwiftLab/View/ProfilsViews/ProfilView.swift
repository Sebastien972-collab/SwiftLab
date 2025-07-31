//
//  ProfilView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct ProfilView: View {
    @State var manager = ProfilManager()
    @Environment(CourseManager.self) private var courseManager
    var body: some View {
        NavigationStack {
            ZStack {
                Color.customBeige.ignoresSafeArea()
                ScrollView(showsIndicators: false) {
                    VStack {
                        VStack {
                            CircleImageProfil(url: manager.userManager.currentUser.imageUrl)
                            Text(manager.userManager.currentUser.username)
                                .font(.title2)
                        }
                        .padding(.vertical)
                        
                        if courseManager.coursesFinished.isNotEmpty {
                            CarouselCustomCourse(courses: courseManager.coursesFinished, title: "Terminés")
                        }
                        BadgesTitleView()
                        BadgesListView(badges: Badge.all, limit: 8, isScrollEnabled: false)
                    }
                }
            }
            .navigationTitle(Text("Mon profil"))
        }
    }
}


#Preview {
    ProfilView()
        .environment(CourseManager())
}
