//
//  QuestionModel.swift
//  DDFlashcards
//
//  Created by joe on 7/24/25.
//

import SwiftUI

struct QuestionModel: Identifiable {
    let id = UUID()
    let question: String
    let questionImageName: ImageResource?
    let answer: String
    let answerImageName: ImageResource?
}
