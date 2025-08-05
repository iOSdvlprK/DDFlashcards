//
//  TopicView.swift
//  DDFlashcards
//
//  Created by joe on 7/23/25.
//

import SwiftUI

struct TopicView: View {
    var flashCardViewModel = FlashCardViewModel()
    
    var body: some View {
        NavigationStack {
            List(flashCardViewModel.flashCardModels) { flashCardModel in
                NavigationLink {
                    QuestionsView(questionModels: flashCardModel.questionModels,
                          topic: flashCardModel.topic,
                          numberOfQuestions: flashCardModel.numberOfQuestions)
                        .navigationBarBackButtonHidden()
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    FlashItemRow(flashcardModel: flashCardModel)
                }

            }
            .navigationTitle("Flashcards")
        }
    }
}

#Preview {
    TopicView()
}
