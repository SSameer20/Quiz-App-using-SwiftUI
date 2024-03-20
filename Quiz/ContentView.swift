//
//  ContentView.swift
//  Quiz
//
//  Created by Sameer Shaik on 20/03/24.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    var body: some View {
        NavigationView{
            VStack(spacing : 30) {
                Text("Test Your Brain !!")
                    .font(.title)
                    .bold()
                Text("last Score :\(self.score) / \(myQuiz.count)")
                    .onAppear(){
                        self.score = loadScore(quiz: "myQuiz")
                    }                
                NavigationLink(destination: QuizMain()){
                    Text("Start")
                        .font(.headline)
                        .font(.callout)
                    
                }
                
                
            }
        }
        .navigationBarTitle("Home", displayMode: .automatic)
    }
}

#Preview {
    NavigationView {
        ContentView()
    }
}
