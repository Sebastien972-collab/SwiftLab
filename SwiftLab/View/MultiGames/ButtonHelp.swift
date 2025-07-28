//
//  ButtonHelp.swift
//  SwiftLab
//
//  Created by cyrilH on 28/07/2025.
//

import Foundation
import UIKit
import SafariServices
import SwiftUI

class ButtonHelpController: UIViewController{
    
    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Un appel à un ami ?", for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -15)
        ])
        
        button.addTarget(self, action: #selector(openSafari), for: .touchUpInside)
    }
    
    @objc private func openSafari() {
        guard let url = URL(string: "https://www.udemy.com/course/apprendre-swift/?couponCode=KEEPLEARNING") else {return}
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
        
    }
    
    
}
