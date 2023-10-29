//
//  ButtonText.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 23.10.2023.
//

import SwiftUI

struct ButtonText: View {

    private let buttonTitle: String
    private let action: () -> Void

    init(
        buttonTitle: String,
        action: @escaping () -> Void
    ) {
        self.buttonTitle = buttonTitle
        self.action = action
    }

    var body: some View {
        Button(
            action: action
        ) {
            Text(buttonTitle)
                .foregroundColor(.ecBlack)
                .padding(.horizontal, Spacing.spacing_5)
                .padding(.vertical, Spacing.spacing_1)
        }
        .background(.ecLightOrange)
        .clipShape(.capsule)
        .padding(.vertical, Spacing.spacing_2)
    }
}

#Preview {
    ButtonText(buttonTitle: "test") { }
}
