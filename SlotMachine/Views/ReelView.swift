//
//  ReelView.swift
//  SlotMachine
//
//  Created by Wilson Mungai on 2023-01-11.
//

import SwiftUI

struct ReelView: View {
    var body: some View {
        Image("reel")
            .resizable()
            .modifier(ReelImageModifier())
    }
}

struct ReelView_Previews: PreviewProvider {
    static var previews: some View {
        ReelView()
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
