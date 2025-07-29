//
//  ButtonHelpView.swift
//  SwiftLab
//
//  Created by cyrilH on 28/07/2025.
//

import SwiftUI
import UIKit
import SafariServices

struct ButtonHelpView : UIViewRepresentable {
    let action: ()-> Void
    func makeUIView(context: Context) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle("Un appel à un ami ?", for: .normal)
        button.addTarget(context.coordinator, action: #selector(Coordinator.tap), for: .touchUpInside)
        return button
    }
    
    func updateUIView(_ uiView: UIButton, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(action: action)
    }
    class Coordinator {
        let action: () -> Void
        
        init(action: @escaping () -> Void) {
            self.action = action
        }
        
        @objc func tap() {
            action()
        }
    }


}
