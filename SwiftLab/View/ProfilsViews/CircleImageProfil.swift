//
//  CircleImageProfil.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct CircleImageProfil: View {
    var url: URL?
    var body: some View {
        if let url = url {
            AsyncImage(url: url) { phase in
                if let image = phase.image {
                    // Displays the loaded image.
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        
                } else {
                    ProgressView() // Acts as a placeholder.
                }
            }
        }
    }
}

#Preview {
    CircleImageProfil(url: User.preview.imageUrl)
}
