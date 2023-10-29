//
//  ButtonImage.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 23.10.2023.
//

import SwiftUI

struct ButtonFavorite: View {
    @Binding private var isFavorite: Bool
    private let action: () -> Void

    init(
        isFavorite: Binding<Bool>,
        action: @escaping () -> Void
    ) {
        self._isFavorite = isFavorite
        self.action = action
    }

    var body: some View {
        Button(
            action: {
                action()
            }
        ) {
            Image(systemName: isFavorite ? "heart.fill" : "heart")
        }
    }
}
