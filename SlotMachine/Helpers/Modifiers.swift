//
//  Modifiers.swift
//  SlotMachine
//
//  Created by Wilson Mungai on 2023-01-11.
//

import SwiftUI

struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color("ColorTransparentBlack"), radius: 0, x: 0, y: 6)
    }
}

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
        .accentColor(.white)
    }
}

struct ScoreLabelModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color("ColorTransparentBlack"), radius: 0, x: 0, y: 3)
            .layoutPriority(1)
    }
  
}
struct ScoreContainerModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.vertical, 4)
            .padding(.horizontal, 16)
            .frame(minWidth: 128)
            .background(Capsule()
                .foregroundColor(Color("ColorTransparentBlack")))
    }
  
}

struct ReelImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(minWidth: 140, idealWidth: 200, maxWidth: 220, minHeight: 130,
                   idealHeight: 190, maxHeight: 200, alignment: .center)
            .modifier(ShadowModifier())
    }
  
}
  


