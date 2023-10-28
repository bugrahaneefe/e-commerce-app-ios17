//
//  e_commerce_app_ios17App.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 23.10.2023.
//

import SwiftUI
import SwiftData

@main
struct e_commerce_app_ios17App: App {

    let modelContainer: ModelContainer

    init() {
        do {
            modelContainer = try ModelContainer(for: ProductModels.self)

            // Make sure the persistent store is empty. If it's not, return the non-empty container.
            var productFetchDescriptor = FetchDescriptor<ProductModels>()
            productFetchDescriptor.fetchLimit = 1

            if try modelContainer.mainContext.fetch(productFetchDescriptor).count == 0 {
                // This code will only run if the persistent store is empty.
                let products = [
                    ProductModels(name: "YUN ACN Arındıran Cilt Temizleme Jeli 150ml",
                                  imageName: "productcleaner1", price: 10, rating: 5, isFavorite: false, category: "Cleaner Serums", isBuyed: false, buyedQuantity: 0),
                    ProductModels(name: "Collagen Cleansing Foam 140ml",
                                  imageName: "productcleaner2", price: 15, rating: 4, isFavorite: true, category: "Cleaner Serums", isBuyed: true, buyedQuantity: 2),
                    ProductModels(name: "Age Control Nutrition Cream",
                                  imageName: "productcream1", price: 18, rating: 4, isFavorite: false, category: "Creams", isBuyed: false, buyedQuantity: 0)
                ]
                for product in products {
                    modelContainer.mainContext.insert(product)
                }
            }

        } catch {
            fatalError("Could not initialize ModelContainer")
        }
    }

    var body: some Scene {
        WindowGroup {
            MainView()
//            ContentView()
        }
        .modelContainer(modelContainer)
    }
}

