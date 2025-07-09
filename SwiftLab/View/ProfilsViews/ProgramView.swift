//
//  ProgramView.swift
//  SwiftLab
//
//  Created by Sébastien DAGUIN  on 08/07/2025.
//

import SwiftUI

struct ProgramView: View {
    let imageName: String
    var body: some View {
        VStack {
            VStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
            }
            
        }
    }
}

#Preview {
    ProgramView(imageName: "swiftuiLogo")
}
