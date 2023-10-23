//
//  ButtonImage.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 23.10.2023.
//

import SwiftUI

struct ButtonImage: View {
    private let buttonImage: String
    private let action: () -> Void

    init(
        buttonImage: String,
        action: @escaping () -> Void
    ) {
        self.buttonImage = buttonImage
        self.action = action
    }

    var body: some View {
        Button(
            action: action
        ) {
            HStack(content: {
                Image(buttonImage)
            })
            .frame(width: 75,height: 100)
            .padding(.horizontal, Spacing.spacing_5)
            .padding(.vertical, Spacing.spacing_1)
        }
    }
}

#Preview {
    ButtonImage(buttonImage: "wtclogo", action: {})
}
