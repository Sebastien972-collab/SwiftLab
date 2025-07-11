//
//  SectionOfCourses.swift
//  SwiftLab
//
//  Created by Sébastien Daguin on 07/07/2025.
//

import Foundation

struct SectionOfCourses: Identifiable {
    let id: UUID = UUID()
    let title: String
    let text: String?
    let imageName: String?
}
