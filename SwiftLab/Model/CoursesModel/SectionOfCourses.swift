//
//  SectionOfCourses.swift
//  SwiftLab
//
//  Created by Sébastien Daguin on 07/07/2025.
//

import Foundation

final class SectionOfCourses: Identifiable, Equatable, Hashable {
    let id: UUID = UUID()
    let title: String
    let text: String?
    let imageName: String?
    var isRead: Bool = false
    
    
    init(title: String, text: String?, imageName: String?) {
        self.title = title
        self.text = text
        self.imageName = imageName
    }
    
    static func == (lhs: SectionOfCourses, rhs: SectionOfCourses) -> Bool {
        lhs.title == rhs.title && lhs.text == rhs.text && lhs.imageName == rhs.imageName
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
        hasher.combine(text)
        hasher.combine(imageName)
    }
    
}
