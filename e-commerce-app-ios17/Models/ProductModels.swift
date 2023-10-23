//
//  FurnitureModels.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 23.10.2023.
//

import SwiftData

@Model class ProductModels {
    var name: String
    var imageName: String
    var price: Int
    var rating: Int
    var isFavorite: Bool
    var category: String
    var isBuyed: Bool
    var buyedQuantity: Int

    init(name: String, imageName: String, price: Int, rating: Int, isFavorite: Bool, category: String, isBuyed: Bool, buyedQuantity: Int) {
        self.name = name
        self.imageName = imageName
        self.price = price
        self.rating = rating
        self.isFavorite = isFavorite
        self.category = category
        self.isBuyed = isBuyed
        self.buyedQuantity = buyedQuantity
    }
}

