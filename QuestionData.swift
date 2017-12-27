//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Andres Gutierrez on 12/25/17.
//  Copyright © 2017 Andres Gutierrez. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}


struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"

    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing."
        case .cat:
            return "Mischievous"
        case .rabbit:
            return "Healthy and full of energy."
        case .turtle:
            return "Wise beyond your years."
        }
    }
}
