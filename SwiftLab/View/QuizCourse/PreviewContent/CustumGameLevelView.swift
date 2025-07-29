//
//  CustumGameLevelView.swift
//  SwiftLab
//
//  Created by Dembo on 25/07/2025.
//



import SwiftUI

struct CustomGameLevelView: View {
    let level: Level
    @State private var selectedAnswer: Int? = nil
    @State private var isCorrect: Bool? = nil
    @State private var isProcessing = false
    @Environment(\.dismiss) private var dismiss
    @Binding var selectedLevel: Int
    @Binding var questionIndex: Int


    var body: some View {
        VStack(spacing: 46) {
            Text(level.questions[questionIndex].question)
                .font(.largeTitle).bold()
                .multilineTextAlignment(.center)
                .frame(height: 150)

            VStack(spacing: 16) {
                ForEach(0..<level.questions[questionIndex].possibleAnswers.count, id: \.self) { number in
                    let answerColor: Color = {
                        if isCorrect == nil || selectedAnswer != number {
                            return Color(.systemGray6)
                        } else {
                            return number == level.questions[questionIndex].answerIndex ? .green : .red
                        }
                    }()

                    Text(level.questions[questionIndex].possibleAnswers[number])
                        .padding(.vertical, 12)
                        .frame(maxWidth: .infinity)
                        .background(answerColor, in: RoundedRectangle(cornerRadius: 12))
                        .onTapGesture {
                            if !isProcessing {
                                selectedAnswer = number
                                checkAnswer(selected: number)
                            }
                        }
                        .foregroundColor(selectedAnswer == number ? .white : .gray)
                }
            }
            .frame(height: 200)

            Spacer()
        }
        .padding(.horizontal)
        .navigationTitle("Level \(level.id + 1)")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                        Text("Back")
                    }
                }
            }

            ToolbarItem(placement: .topBarTrailing) {
                Text("\(questionIndex + 1)/\(level.questions.count)")
                    .font(.system(size: 11))
                    .frame(width: 30, height: 30)
                    .background(Color.indigo)
                    .clipShape(Circle())
                    .foregroundColor(.white)
            }
        }
    }

    func checkAnswer(selected: Int) {
        isProcessing = true
        isCorrect = (selected == level.questions[questionIndex].answerIndex)

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if isCorrect == true {
                questionIndex += 1
                if questionIndex == level.questions.count {
                    dismiss()
                    selectedLevel += 1
                    questionIndex = 0
                }
            }

            selectedAnswer = nil
            isCorrect = nil
            isProcessing = false
        }
    }
}
