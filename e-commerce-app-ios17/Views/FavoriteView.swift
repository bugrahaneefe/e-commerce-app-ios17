//
//  FavoriteView.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 27.10.2023.
//

import SwiftUI
import SwiftData

struct FavoriteView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var productModels: [ProductModels]

    var body: some View {
        VStack {
            TextLarge("Favorites")
            ScrollView {
                VStack(spacing: 30) {
                    ForEach(productModels.filter { $0.isFavorite == true }) { product in
                        HStack(spacing: 25) {
                            VStack {
                                ImageCapsule(product.imageName)
                                ButtonSymbol(buttonTitle: "", buttonSymbol: "trash") {
                                    product.isFavorite = false
                                }
                            }
                            VStack(spacing: 5) {
                                TextHeadline(product.name)
                                TextLarge("\(product.price) TL")
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    FavoriteView()
}
