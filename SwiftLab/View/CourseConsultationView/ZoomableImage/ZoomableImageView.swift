//
//  ZoomableImageView.swift
//  SwiftLab
//
//  Created by Dembo on 21/07/2025.
//
import SwiftUI

struct ZoomableImageView: View {
    let imageName: String
    
    @GestureState private var zoom = 1.0

    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .scaleEffect(zoom)
            .gesture(
                MagnifyGesture()
                    .updating($zoom) { value, gestureState, transaction in
                        gestureState = value.magnification
                    }
            )
    }
}
#Preview {
    NavigationStack {
        ZoomableImageView(imageName: "cours-1-image-1")
    }
}
