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

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(productModels) { productModels in
                        Text("Name: \(productModels.name)")
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = ProductModels(name: "", imageName: "String", price: 1, rating: 1, isFavorite: true, category: "String", isBuyed: true, buyedQuantity: 1)
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(productModels[index])
            }
        }
    }
}

#Preview {
    MainCategoriesView().modelContainer(for: ProductModels.self, inMemory: true)
}
