//
//  ResultView.swift
//  Quiz
//
//  Created by Sameer Shaik on 20/03/24.
//

import SwiftUI

struct ResultView: View {
    var score : Int
    var body: some View {
        Text("Your Overall \(self.score) / \(myQuiz.count)")
            .onAppear(){
                saveScore(quiz: "myQuiz", score: self.score)
            }
            .padding(20)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .bold()
        Text(subTitle(score: self.score))
            .foregroundColor(self.score < 3 ? Color.red : Color.black)
        
    }
    
    func subTitle(score : Int) -> String{
        var result : String
        switch(score){
        case 0..<3 :
            result = "Better Like Next Time"
        case 3...4 :
            result =  "Good"
        case 4...myQuiz.count :
            result = "Wow ! You are doing great "
        default:
            result = "oops"
        }
        return result
    }
}

#Preview {
    ResultView(score: 1)
}
