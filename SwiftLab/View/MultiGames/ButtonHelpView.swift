//
//  ButtonHelpView.swift
//  SwiftLab
//
//  Created by cyrilH on 28/07/2025.
//

import SwiftUI
import UIKit
import SafariServices

struct ButtonHelpView: View {
    var body: some View {
        VStack{
            LinkViewController()
        }
    }
}

#Preview {
    ButtonHelpView()
}

struct LinkViewController : UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ButtonHelpController {
        return ButtonHelpController()
    }
    func updateUIViewController(_ uiViewController: ButtonHelpController, context: Context) {
        
    }
    
    
}
