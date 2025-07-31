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
    @State private var exercices: Exercices?
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
                    ForEach(course.section.indices, id: \.self) { index in
                        LazyVStack(alignment: .leading) {
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
                            manager.updateSectionIsRead(with: course, and: index)
                            self.course.section[index].isRead = true
                            let indexCourse = manager.coursesInProgress.firstIndex(of: course)
                            print("Section de \(manager.coursesInProgress[indexCourse!].title) est marquée comme \(manager.coursesInProgress[indexCourse!].section[index].isRead)")
                            
                            
                        })
                        .padding(.horizontal, 3)
                        Divider()
                    }
                    HStack(content: {
                        Spacer()
                        ContinueButtonView(title: "Lancer exercise", color: .customClearOrange) {
                            self.exercices = Exercices(nameOfExercices: course.title, exerciceFinished: false, exercice:  [course.test])
                            
                            showQuizt.toggle()
                            
                        }
                        Spacer()
                    })
                    .navigationDestination(isPresented: $showQuizt) {
                        ExerciceSoloView(exercice: $exercices)
                        
                    }
                }
                .padding()
                
            }
        }
        .onAppear {
            manager.launchCourse(course)
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text(course.title)
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                } label: {
                    VStack {
                        Image(systemName: course.isFinished ? "checkmark.circle.fill" : "circle")
                            .labelStyle(.iconOnly)
                            .foregroundColor(course.isFinished ? .green : .gray)
                            .animation(.easeInOut, value: course.isFinished)
                    }
                }
                
                
            }
        }
    }
}

#Preview {
    NavigationStack {
        CourseConsultationView(course:.allCourses[0])
            .environment(CourseManager())
    }
}

