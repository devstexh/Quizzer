//
//  Quizzer.swift
//  Quizzler-iOS13
//
//  Created by Dev Sen on 6/6/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Quizzer {
    let questions = [
        Question(q: "Which is the largest organ in the human body?", o: ["Heart", "Skin", "Large Intestine"], a: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", o: ["25", "50", "100"], a: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", o: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], a: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", o: ["Chapeau", "Écharpe", "Bonnet"], a: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", o: ["Notebook", "Handkerchief", "Watch"], a: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", o: ["Au Revoir", "Adiós", "Salir"], a: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", o: ["Green", "Orange", "Blue"], a: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", o: ["Rum", "Whisky", "Gin"], a: "Rum"),
        Question(q: "What type of animal was Harambe?", o: ["Panda", "Gorilla", "Crocodile"], a: "Gorilla"),
        Question(q: "Where is Tasmania located?", o: ["Indonesia", "Australia", "Scotland"], a: "Australia")
    ]
    var questionIndex = 0
    
    /**
    external param: no param reuired to call
    internal param: answer
     */
    func check(_ answer: String) -> Bool {
        return answer == questions[questionIndex].answer
    }
    
    mutating func nextQuestion() {
        questionIndex += 1
        if (questionIndex == questions.count) {
            questionIndex = 0
        }
    }
    
    func getProgress() -> Float {
        return Float(questionIndex) / Float(questions.count)
    }
    
    func getQuestionText() -> String {
        return questions[questionIndex].text
    }
    
    func getChoices() -> [String] {
        return questions[questionIndex].options
    }
}
