//
//  CourseConsultationView.swift
//  SwiftLab
//
//  Created by Dembo on 10/07/2025.
//

import SwiftUI

struct CourseConsultationView: View {
    let course: Course
    @State private var selectedImageName: Bool = false
    @State private var image: Image? = nil
    var body: some View {
        ZStack {
            Color.customBeige.ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading) {
                    Text(course.text)
                        .font(.body)
                        .foregroundColor(.secondary)
                    CourseVideo()
                    ForEach(course.section) { section in
                        VStack(alignment: .leading) {
                            Text(section.title)
                                .font(.title2)
                                .bold()
                            if let text = section.text {
                                Text(text)
                                    .foregroundColor(.primary)
                                    .padding()
                                    .background(Color.gray.opacity(0.1))
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                            }
                            
                            if let image = section.imageName {
                                Image(image)
                                    .resizable()
                                    .scaledToFill()
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .frame(maxWidth: .infinity, maxHeight: 300)
                                    .clipped()
                                    .contextMenu {
                                        Button {
                                            self.image = Image(image)
                                            selectedImageName.toggle()
                                        } label: {
                                            Label("Examiner l'image", systemImage: "eye")
                                        }

                                        Button(action: {
                                            // Action pour sauvegarder l'image
                                        }) {
                                            Label("Enregistrer l'image", systemImage: "square.and.arrow.down")
                                        }
                                    }
                            }
                        }
                        .padding(.horizontal, 3)
                        Divider()
                    }
                    
                }
                .padding()
                .navigationTitle(course.title)
                .navigationBarTitleDisplayMode(.inline)
                
            }
        }
    }
}

#Preview {
    NavigationStack {
        CourseConsultationView(course: .allCourses[0])
    }
}
