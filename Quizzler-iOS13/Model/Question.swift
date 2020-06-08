//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Dev Sen on 6/6/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let options: [String]
    let answer: String
    
    init(q: String, o: [String], a: String) {
        self.text = q
        self.options = o
        self.answer = a
    }
}
