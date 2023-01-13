//
//  Extensions.swift
//  SlotMachine
//
//  Created by Wilson Mungai on 2023-01-11.
//

import SwiftUI

extension Text {
    func scoreLabelStye() -> Text {
        self
            .foregroundColor(.white)
            .font(.system(size: 10, weight: .bold, design: .rounded))
    }
    
    func scoreNumber() -> Text {
        self
            .foregroundColor(.white)
            .font(.system(.title, design: .rounded))
            .fontWeight(.heavy)
    }
}
