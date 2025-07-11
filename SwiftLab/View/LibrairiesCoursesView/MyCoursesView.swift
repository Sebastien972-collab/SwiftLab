//
//  MyCoursesView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 09/07/2025.
//

import SwiftUI

struct MyCoursesView: View {
    var body: some View {
        ZStack {
            Color.customBeige.ignoresSafeArea(edges: .all)
            VStack(alignment: .leading,content: {
                CarouselCustomCourse()
                CardCourseView()
                Spacer()
            })
            .navigationTitle(Text("Mes cours"))
        }
    }
}

#Preview {
    NavigationStack {
        MyCoursesView()
    }
}
