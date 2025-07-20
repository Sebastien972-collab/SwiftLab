//
//  CorrectionExercieView.swift
//  SwiftLab
//
//  Created by cyrilH on 17/07/2025.
//

import SwiftUI

struct CorrectionExercieView: View {
   
    @State var manager = ExerciceSoloManager(exercices: ExoDatas.swiftBasics)
    var body: some View {
        ZStack{
            Color.customBeige.ignoresSafeArea(.all)
            ScrollView(showsIndicators: false){
                VStack{
                    HStack{
                        VStack{
                            Text("correction")
                                .font(.title)
                                .bold()
                                .padding(.horizontal)
                        }
                        Spacer()
                    }
                    
                    if manager.exerciceFinished {
                        Text(" Exercice terminé !")
                            .font(.title)
                            .padding()
                    } else {
                        // Sinon, on affiche la question actuelle
                        QuizView(question: manager.currentQuestiion, manager: $manager)
//                        a revoir ici
                    }
                    VStack{
                        
                        VStack{
                            HStack(alignment: .top){
                                VStack{
                                    Image(systemName: "lightbulb.circle.fill")
                                        .resizable(capInsets: EdgeInsets())
                                        .frame(width: 24, height: 24)
                                }.padding(.trailing,5)
                                
                                Text("\(manager.currentQuestiion.correction)")
                                    .font(.system(size: 14, weight: .medium))
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.black)
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                            
                        }
                        
                        
                    }
                    
                    .padding( 20)
                    .frame(width: 300 )
                    .background(Color.grayBorder)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                }
                .padding(.top,40)
            }
        }
        
    }
}

#Preview {
    CorrectionExercieView()
}
