//
//  iPad Support.swift
//  DDFlashcards
//
//  Created by joe on 8/6/25.
//

import SwiftUI

extension UIDevice {
    static var isIpad: Bool {
        UIDevice
            .current
            .userInterfaceIdiom == .pad
    }
    static var isIphone: Bool {
        UIDevice
            .current
            .userInterfaceIdiom == .phone
    }
}
