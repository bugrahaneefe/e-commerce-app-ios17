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
                    Image(category.imageName)
                        .frame(width: 100, height: 50)
                        .background(.ecLightOrange).ignoresSafeArea()
                        .padding(.zero)
                    Text(category.name)
                        .bold()
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
                                Image(product.imageName)
                                    .resizable()
                                Text(product.name)
                                    .font(.headline)
                                Text("\(product.price) TL")
                                    .font(.largeTitle)
                                ButtonSymbol(buttonTitle: "Buy", buttonSymbol: "basket.fill") {
                                    product.isBuyed = true
                                }
                            }
                            .padding(.zero)
                        }
                        .padding(.zero)
                    } label: {
                        HStack(spacing: Spacing.spacing_1) {
                            Image(product.imageName)
                                .resizable()
                                .frame(width: 125, height: 150)
                            VStack(alignment: .center) {
                                Text(product.name)
                                    .font(.footnote)
                                Spacer()
                                Text("\(product.price) TL")
                                ButtonText(buttonTitle: "Detail",
                                           action: {})
                            }
                            .padding()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MainCategoriesView().modelContainer(for: ProductModels.self, inMemory: true)
}
