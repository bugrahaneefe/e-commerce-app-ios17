//
//  ProductMenuModel.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 27.10.2023.
//

import Foundation

struct ProductMenuModel {
    let mainMenuItems = {
        let topMenuItems = [ProductCategoryModels(name: "First Category",
                                                 imageName: "wtclogo",
                                                 subMenuProducts: [ProductModels(name: "Age Control Nutrition Fluid Cream",
                                                                                 imageName: "image1", price: 10, rating: 5, isFavorite: false, category: "Skincare", isBuyed: false, buyedQuantity: 0),
                                                                   ProductModels(name: "Age Control Vital Energy Eye Cream",
                                                                                 imageName: "image2", price: 15, rating: 4, isFavorite: true, category: "Skincare", isBuyed: true, buyedQuantity: 2),
                                                                   ProductModels(name: "YUN ACN Prebiyotikli Temizleme Jeli",
                                                                                 imageName: "image3", price: 20, rating: 3, isFavorite: false, category: "Skincare", isBuyed: false, buyedQuantity: 0),
                                                                   ProductModels(name: "Aqua Recharge 24H Moist Cream",
                                                                                 imageName: "image4", price: 12, rating: 4, isFavorite: true, category: "Skincare", isBuyed: true, buyedQuantity: 3),
                                                                   ProductModels(name: "Skinvisibles Even Sense Fluid SPF 50 PA++++",
                                                                                 imageName: "image5", price: 18, rating: 4, isFavorite: false, category: "Skincare", isBuyed: false, buyedQuantity: 0)]),
                           ProductCategoryModels(name: "Second Category",
                                                 imageName: "wtclogo",
                                                 subMenuProducts: [
                                                                   ProductModels(name: "Skinvisibles Even Sense Fluid SPF 50 PA++++",
                                                                                 imageName: "image5", price: 18, rating: 4, isFavorite: false, category: "Skincare", isBuyed: false, buyedQuantity: 0)])]
        return topMenuItems
    }()

    func getSubMenuProducts(topMenu: ProductCategoryModels) -> [ProductModels]? {
        guard let subMenuProducts = topMenu.subMenuProducts else {
            return nil
        }
        return subMenuProducts
    }
}
