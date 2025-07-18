//
//  CorrectionExercieView.swift
//  SwiftLab
//
//  Created by cyrilH on 17/07/2025.
//

import SwiftUI

struct CorrectionExercieView: View {
    @State var tableau : Array = ["a", "b", "c", "d"]
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
                    //affichage page suivante ou fin
                    VStack{
                        Text("question")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .padding()
                            .bold()
                        VStack(spacing : 8){
                            ForEach(tableau.indices, id: \.self) { choice in
                                QuizChoiceView( selectedChoice: $tableau[choice] , choices: tableau[choice])
                                
                            }
                        }
                        ContinueButtonView(title: "Réponse suivante", color: .customClearOrange) {
                            withAnimation {
                                //                            prochaine question -->
                            }
                        }
                        .frame(width: 300, height: 60)
                        .padding()
                    }
                    
                    VStack{
                        
                        VStack{
                            HStack(alignment: .top){
                                VStack{
                                    Image(systemName: "lightbulb.circle.fill")
                                        .resizable(capInsets: EdgeInsets())
                                        .frame(width: 24, height: 24)
                                }.padding(.trailing,5)
                                
                                Text("Les constantes sont déclarées en LET tandis que VAR correspond aux variables. Const n’existe pas en Swift et private concerne la portée d’un classe")
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
