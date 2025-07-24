//
//  VideoCardView.swift
//  SwiftLab
//
//  Created by Dembo on 10/07/2025.
//

import SwiftUI
import AVKit


struct VideoCardView: View {
    let imageName: String
    @State private var showVideo: Bool = false

    var body: some View {
        if showVideo, let path = Bundle.main.path(forResource: imageName, ofType: "mp4") {
            let player = AVPlayer(url: URL(fileURLWithPath: path))
            VideoPlayer(player: player)
                .frame(maxWidth: .infinity, maxHeight: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
                .onAppear {
                    player.play()
                }
            
        } else {
            ZStack {
                Color.black
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                Button {
                    withAnimation {
                        showVideo = true
                    }
                } label: {
                    Image(systemName: "play.circle")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    VideoCardView(imageName: "video1")
}
