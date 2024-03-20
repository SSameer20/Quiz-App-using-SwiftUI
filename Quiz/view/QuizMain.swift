//
//  QuizMain.swift
//  Quiz
//
//  Created by Sameer Shaik on 20/03/24.
//

import SwiftUI

struct QuizMain: View {
    
    @State var score : Int = 0
    @State var i : Int = 0
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
            if(self.i < myQuiz.count){
                Text(myQuiz[i].title!)
                    .font(.title)
                    .bold()
                Text(myQuiz[i].text!)
                    .font(.title2)
                Button(action: {
                    buttonAction(num: 0)
                }, label: {
                    Text(myQuiz[self.i].options[0])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue, lineWidth: 2))
                    
                })
                
                Button(action: {
                    buttonAction(num: 1)
                }, label: {
                    Text(myQuiz[self.i].options[1])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue, lineWidth: 2))
                    
                })
                
                Button(action: {
                    buttonAction(num: 2)
                }, label: {
                    Text(myQuiz[self.i].options[2])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue, lineWidth: 2))
                    
                })
                
                Button(action: {
                    buttonAction(num: 3)
                }, label: {
                    Text(myQuiz[self.i].options[3])
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.blue, lineWidth: 2))
                    
                })
            }
            else{
                ResultView(score: self.score)
            }
        }
        .padding(.horizontal)
        
    }
    func buttonAction( num : Int){
        if(myQuiz[self.i].correct == num){
            self.score = self.score + 1
        }
        
        self.i = self.i + 1
        
        
    }
}


#Preview {
    QuizMain()
}
