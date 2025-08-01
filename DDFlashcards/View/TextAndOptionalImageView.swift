//
//  TextAndOptionalImageView.swift
//  DDFlashcards
//
//  Created by joe on 7/31/25.
//

import SwiftUI

struct TextAndOptionalImageView: View {
    let text: String
    let imageName: ImageResource?
    let rotate: Bool
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text(text)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxWidth: .infinity)
                
                if let imageName {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(maxHeight: geometry.size.height * 0.7)
                        .clipShape(.rect(cornerRadius: 10))
                }
            }
        }
        .padding()
        .rotation3DEffect(rotate ? .degrees(180) : .zero, axis: (x: 0.0, y: 1.0, z: 0.0))
    }
}

#Preview {
    TextAndOptionalImageView(
        text: "What city is this?",
        imageName: .bigBen,
        rotate: false
    )
}
