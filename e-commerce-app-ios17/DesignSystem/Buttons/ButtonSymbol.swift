//
//  ButtonSymbol.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 23.10.2023.
//

import SwiftUI

struct ButtonSymbol: View {
    private let buttonTitle: String
    private let buttonSymbol: String
    private let action: () -> Void

    init(
        buttonTitle: String,
        buttonSymbol: String,
        action: @escaping () -> Void
    ) {
        self.buttonTitle = buttonTitle
        self.buttonSymbol = buttonSymbol
        self.action = action
    }

    var body: some View {
        Button(
            action: action
        ) {
            HStack(spacing: 5, content: {
                Text(buttonTitle)
                    .foregroundColor(.ecBlack)
                Image(systemName: buttonSymbol)
                    .foregroundStyle(.ecBlack)
            })
            .padding(.horizontal, Spacing.spacing_5)
            .padding(.vertical, Spacing.spacing_1)
        }
        .background(.ecLightOrange)
        .clipShape(.capsule)
    }
}

#Preview {
    ButtonSymbol(buttonTitle: "test", buttonSymbol: "basket.fill", action: {})
}
