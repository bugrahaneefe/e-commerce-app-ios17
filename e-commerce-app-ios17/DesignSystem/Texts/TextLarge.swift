//
//  TextLarge.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 29.10.2023.
//

import SwiftUI

struct TextLarge: View {
    private let text: String

    init(_ text: String) {
        self.text = text
    }

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
    }
}

//#Preview {
//    TextLarge()
//}
