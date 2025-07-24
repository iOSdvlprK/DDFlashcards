//
//  FlashcardModel.swift
//  DDFlashcards
//
//  Created by joe on 7/24/25.
//

import Foundation

struct FlashcardModel: Identifiable {
    let id = UUID()
    let topic: String
    let topicDescription: String
    let topicImageName: String
    let questionModels: [QuestionModel]
    let numberOfQuestions: Int
}
