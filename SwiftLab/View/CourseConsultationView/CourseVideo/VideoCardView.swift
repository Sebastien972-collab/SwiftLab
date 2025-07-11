//
//  VideoCardView.swift
//  SwiftLab
//
//  Created by Dembo on 10/07/2025.
//

import SwiftUI
import AVKit


struct VideoCardView: View {
    let videoURL: URL

    var body: some View {
        VideoPlayer(player: AVPlayer(url: videoURL))
            .frame(height: 220)
            .cornerRadius(16)
            .shadow(radius: 4)
            .padding(.horizontal)
    }
}

#Preview {
    VideoCardView(videoURL: URL(string: "https://www.youtube.com/watch?v=pNs9F1QTKpw")!)
}
