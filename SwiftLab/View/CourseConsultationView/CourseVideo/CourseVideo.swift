//
//  CourseVideo.swift
//  SwiftLab
//
//  Created by Dembo on 10/07/2025.
//

import SwiftUI
import AVKit

struct CourseVideo: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {

            VideoCardView(videoURL: URL(string: "https://www.youtube.com/watch?v=pNs9F1QTKpw")!)
            Spacer()
        }
        .padding(.top)
    }
}

#Preview {
    CourseVideo()
}


