//
//  model.swift
//  Quiz
// Created by Sameer Shaik on 20/03/24.
//

import Foundation

struct QuizModel{
    var title : String?
    //var img: String?
    var text: String?
    var options : [String]
    var correct: Int?
}

var myQuiz : [QuizModel] = [
    QuizModel(
        title : "Country - Capital",
        text: "What is the Capital City of India?",
        options: ["Mumbai","New Delhi", "Chennai","Hyderabad"],
        correct: 1),
    
    QuizModel(
        title: "Science - Elements",
        text: "Which element on the periodic table has the atomic number 1",
        options: ["Hydrogen", "Helium", "Lithium", "Boron"],
        correct: 0),
    
    QuizModel(title: "History - Renaissance",
              text: "When did the Renaissance period roughly begin in Europe? (14th/15th Century)",
              options: ["13th Century", "14th Century", "15th Century", "16th Century"],
              correct: 2),

   QuizModel( title: "Literature - Shakespeare",
              text: "What is the name of the balcony scene in Romeo and Juliet?",
              options: ["Love Scene", "Balcony Talk", "Moonlit Conversation", "Famous Balcony"],
              correct: 3),

    QuizModel(
                title: "World Geography - Continents",
              text: "How many continents are there on Earth?",
              options: ["5", "6", "7", "8"],
              correct: 2)

]


func saveScore(quiz : String, score : Int){
    UserDefaults.standard.set(score, forKey: quiz)
}

func loadScore(quiz : String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
    
}







