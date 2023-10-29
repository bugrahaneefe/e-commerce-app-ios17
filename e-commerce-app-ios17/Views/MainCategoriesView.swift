//
//  MainCategoriesView.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 23.10.2023.
//

import SwiftUI
import SwiftData

struct MainCategoriesView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var productModels: [ProductModels]
    @State private var categoryIds: Set<ProductCategoryModels.ID> = []
    @State private var productIsFavorite = false
    private let model = ProductMenuModel()

    var navigationTitle: String {
        if let selectedCategoryId = categoryIds.first,
           let selectedCategory = model.mainMenuItems.first(where: { $0.id == selectedCategoryId }) {
            return selectedCategory.name
        } else {
            return "Product Categories"
        }
    }

    var body: some View {
        NavigationSplitView {
            List(model.mainMenuItems, selection: $categoryIds) { category in
                HStack(alignment: .center, spacing: Spacing.spacing_1) {
                    ImageCategory(category.imageName)
                    TextHeadline(category.name)
                }
            }
            .navigationTitle("Product Categories")
            .navigationBarTitleDisplayMode(.large)
        } detail: {
            List {
                ForEach(productModels.filter { $0.category == navigationTitle }) { product in
                    NavigationLink {
                        ScrollView {
                            VStack(alignment: .center, spacing: 25) {
                                ImageProductDetail(product.imageName)
                                TextHeadline(product.name)
                                TextLarge("\(product.price) TL")
                                ButtonSymbol(buttonTitle: "Buy", buttonSymbol: "basket.fill") {
                                    product.isBuyed = true
                                }
                            }
                            .toolbar {
                                ToolbarItem(placement: .navigationBarTrailing) {
                                    ButtonFavorite(isFavorite: $productIsFavorite) {
                                        product.isFavorite.toggle()
                                        productIsFavorite = product.isFavorite
                                    }
                                }
                            }
                            .padding(.zero)
                        }
                        .padding(.zero)
                    } label: {
                        HStack(spacing: Spacing.spacing_1) {
                            ImageProduct(product.imageName)
                            VStack(alignment: .center) {
                                TextFootnote(product.name)
                                Spacer()
                                TextFootnote("\(product.price) TL")
                                ButtonText(buttonTitle: "Detail",
                                           action: {
                                })
                            }
                            .padding()
                        }
                    }
                }
            }
        }
    }
}

//#Preview {
//    MainCategoriesView().modelContainer(for: ProductModels.self, inMemory: true)
//}
