//
//  Question.swift
//  Quizzler
//
//  Created by Akshay Gore on 4/7/18.
//  Copyright © 2018 Akshay Gore. All rights reserved.
//

import Foundation

class Question {
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
