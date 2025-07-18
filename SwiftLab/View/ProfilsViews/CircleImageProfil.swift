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
                        .clipShape(Circle())
                        .frame(maxWidth: 150, maxHeight: 150)
                        
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
