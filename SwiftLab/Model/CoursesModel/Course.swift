//
//  Course.swift
//  SwiftLab
//
//  Created by Sébastien Daguin on 07/07/2025.
//

import Foundation

struct Course: Identifiable {
    let id: UUID
    let title: String
    let text: String
    let videoUrl: String?
    let sections: [SectionOfCourses]
    let
}
