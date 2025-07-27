//
//  FillBarView.swift
//  DDFlashcards
//
//  Created by joe on 7/27/25.
//

import SwiftUI

struct FillBarView: View {
    let barWidth: CGFloat
    let colorBG: Color
    let colorFill: Color
    let percentage: CGFloat
    
    let opacity = 0.7
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                // background
                RoundedRectangle(cornerRadius: 10)
                    .fill(colorBG.opacity(opacity))
                    .frame(width: .infinity, height: barWidth)
                
                ZStack {
                    // the foreground bar
                    RoundedRectangle(cornerRadius: 10)
                        .fill(colorFill.opacity(opacity))
                        .frame(width: geometry.size.width * percentage, height: barWidth)
                    
                    // light
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white.opacity(opacity / 2))
                        .frame(width: geometry.size.width * percentage - 10, height: 0.3 * barWidth)
                        .offset(y: -1)
                }
            }
        }
    }
}

#Preview {
    VStack {
        let n = 10
        
        ForEach(0 ..< (n + 1), id: \.self) { i in
            FillBarView(
                barWidth: 10,
                colorBG: .gray,
                colorFill: .purple,
                percentage: CGFloat(i) / CGFloat(n)
            )
            .padding()
        }
    }
}
