//
//  CircleImageParticipant.swift
//  SwiftLab
//
//  Created by Dembo on 22/07/2025.
//

import SwiftUI

struct CircleImageParticipant: View {
    var url: URL?
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 40, maxHeight: 40)
                .clipShape(Circle())
        } placeholder: {
            ProgressView()
        }
            
            
    }
}

    
#Preview {
    ZStack {
        Color.white.ignoresSafeArea()
        CircleImageParticipant(url: User.preview.imageUrl )
    }
}
