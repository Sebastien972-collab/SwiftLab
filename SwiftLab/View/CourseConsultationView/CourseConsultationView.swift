//
//  CourseConsultationView.swift
//  SwiftLab
//
//  Created by Dembo on 10/07/2025.
//

import SwiftUI



struct CourseConsultationView: View {
    @Environment(CourseManager.self) var manager
    var course: Course
    @State private var selectedImageName: Bool = false
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
                    Text(manager.course.text)
                        .font(.body)
                        .foregroundColor(.secondary)
                    VideoCardView(imageName: manager.course.videoName ?? "video1")
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                    ForEach(manager.course.section.indices, id: \.self) { index in
                        VStack(alignment: .leading) {
                            Text(course.section[index].title)
                                .font(.title2)
                                .bold()
                            if let text = course.section[index].text {
                                Text(text)
                                    .foregroundColor(.primary)
                                    .padding()
                                    .background(Color.gray.opacity(0.1))
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                
                            }
                            
                            if let image = course.section[index].imageName {
                                ZoomableImageView(imageName: image)
                            }

                        }
                        .onAppear(perform: {
                            manager.updateSectionIsRead(with: index)
                        })
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
        .onAppear {
            manager.launchCourse(course)
        }
    }
}

#Preview {
    NavigationStack {
        CourseConsultationView(course: .allCourses[0])
    }
}

