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
                    ProductModels(name: "Age Control Nutrition Fluid Cream",
                                  imageName: "image1", price: 10, rating: 5, isFavorite: false, category: "Skincare", isBuyed: false, buyedQuantity: 0),
                    ProductModels(name: "Age Control Vital Energy Eye Cream",
                                  imageName: "image2", price: 15, rating: 4, isFavorite: true, category: "Skincare", isBuyed: true, buyedQuantity: 2),
                    ProductModels(name: "YUN ACN Prebiyotikli Temizleme Jeli",
                                  imageName: "image3", price: 20, rating: 3, isFavorite: false, category: "Skincare", isBuyed: false, buyedQuantity: 0),
                    ProductModels(name: "Aqua Recharge 24H Moist Cream",
                                  imageName: "image4", price: 12, rating: 4, isFavorite: true, category: "Skincare", isBuyed: true, buyedQuantity: 3),
                    ProductModels(name: "Skinvisibles Even Sense Fluid SPF 50 PA++++",
                                  imageName: "image5", price: 18, rating: 4, isFavorite: false, category: "Skincare", isBuyed: false, buyedQuantity: 0)
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
        }
        .modelContainer(modelContainer)
    }
}

