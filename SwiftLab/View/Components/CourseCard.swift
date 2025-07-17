//
//  CourseCard.swift
//  SwiftLab
//
//  Created by Dembo on 09/07/2025.
//

import SwiftUI

struct CourseCard: View {
    let course: Course
    var progress: Double
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // SFSymbol & badge
            HStack {
                Image(systemName: "book.fill")
                    .resizable()
                    .foregroundStyle(.white)
                    .frame(width: 18, height: 18)
                
                Spacer()
                
                Text("Nouveau")
                    .font(.system(size: 8, weight: .medium))
                    .foregroundStyle(.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background {
                        Capsule()
                            .fill(Color.customClearGreen)
                    }
            }
            .padding(.horizontal, 16)
            .padding(.top, 16)
            
            // Titre
            VStack(alignment: .leading, spacing: 4) {
                Text(course.title)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundStyle(.white)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                
                Spacer()
                
                // Progression
                VStack(alignment: .leading, spacing: 6) {
                    Text("Progression \(Int(progress * 100))%")
                        .font(.system(size: 10, weight: .medium))
                        .foregroundStyle(.white.opacity(0.9))
                    
                    ProgressView(value: progress)
                        .progressViewStyle(LinearProgressViewStyle())
                        .scaleEffect(x: 1, y: 0.8, anchor: .center)
                        .accentColor(.orange)
                        .background(Color.white.opacity(0.3))
                        .cornerRadius(2)
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 12)
            .padding(.bottom, 16)            
        }
        .background {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.customBlue)
        }
        .frame(width: 150, height: 140)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    VStack {
        CourseCard(course: .allCourses[0], progress: 0.5)
    }
    .padding()
}
