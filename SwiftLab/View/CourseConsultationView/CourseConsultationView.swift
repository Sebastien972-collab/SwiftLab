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
    @State private var showQuizt: Bool = false
    var body: some View {
        ZStack {
            Color.customBeige.ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading) {
                    HStack{
                        MignatureParticipant(participants: User.userDatabase)
                        InviteButton()
                            .padding(.leading, 16)
                    }
                    
                   
                     
                    Text(course.text)
                        .font(.body)
                        .foregroundColor(.secondary)
                    VideoCardView(imageName: course.videoName ?? "video1")
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
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
                                ZoomableImageView(imageName: image)
                            }

                        }
                        .padding(.horizontal, 3)
                        Divider()
                    }
                    HStack(content: {
                        Spacer()
                        ContinueButtonView(title: "Lancer exercise", color: .customClearOrange) {
                            showQuizt.toggle()
                        }
                        Spacer()
                    })
                    .navigationDestination(isPresented: $showQuizt) {
                        VStack {
                            Text(course.test.text)
                            Text("En cours de développement")
                                .italic()
                                .foregroundStyle(.secondary)
                        }
                        
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
