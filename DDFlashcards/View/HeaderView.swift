//
//  HeaderView.swift
//  DDFlashcards
//
//  Created by joe on 7/30/25.
//

import SwiftUI

struct HeaderView: View {
    let topic: String
    let questionNumber: Int
    let numberOfQuestions: Int
    let colorBG: Color
    let colorFill: Color
    let dismissFunc: () -> Void
    
    let barWidth = 10.0
    let unicodeX = "\u{2715}"
    
    var percentage: CGFloat {
        CGFloat(questionNumber) / CGFloat(numberOfQuestions)
    }
    
    var body: some View {
        VStack(spacing: 5) {
            // first row
            HStack {
                Text(topic)
                    .font(.body)
                
                Spacer()
                
                Text("\(questionNumber) out of \(numberOfQuestions)")
                    .font(.caption)
            }
            .fontWeight(.bold)
            
            // second row
            HStack {
                Button(
                    action: {
                        dismissFunc()
                    },
                    label: {
                        Text(unicodeX)
                            .font(.largeTitle)
                            .fontWeight(.thin)
                            .foregroundStyle(colorBG)
                })
                
                FillBarView(
                    barWidth: barWidth,
                    colorBG: .gray,
                    colorFill: .purple,
                    percentage: percentage
                )
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    HeaderView(
        topic: "Countries",
        questionNumber: 3,
        numberOfQuestions: 10,
        colorBG: .gray,
        colorFill: .purple,
        dismissFunc: {}
    )
}
