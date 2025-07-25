//
//  FlashcardModel.swift
//  DDFlashcards
//
//  Created by joe on 7/24/25.
//

import SwiftUI

struct FlashcardModel: Identifiable {
    let id = UUID()
    let topic: String
    let topicDescription: String
    let topicImageName: ImageResource
    let questionModels: [QuestionModel]
    var numberOfQuestions: Int {
        questionModels.count
    }
}
