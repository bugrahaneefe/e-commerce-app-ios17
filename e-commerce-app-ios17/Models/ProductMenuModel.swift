//
//  ProductMenuModel.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 27.10.2023.
//

import Foundation

struct ProductMenuModel {
    let mainMenuItems = {
        let topMenuItems = [ProductCategoryModels(name: "Cleaner Serums",
                                                 imageName: "categorycleaner",
                                                 subMenuProducts: [ProductModels(name: "YUN ACN Arındıran Cilt Temizleme Jeli 150ml",
                                                                                 imageName: "productcleaner1", price: 10, rating: 5, isFavorite: false, category: "Cleaner Serums", isBuyed: false, buyedQuantity: 0),
                                                                   ProductModels(name: "Collagen Cleansing Foam 140ml",
                                                                                 imageName: "productcleaner2", price: 15, rating: 4, isFavorite: true, category: "Cleaner Serums", isBuyed: true, buyedQuantity: 2)]),
                           ProductCategoryModels(name: "Creams",
                                                 imageName: "categorycream",
                                                 subMenuProducts: [
                                                                   ProductModels(name: "Age Control Nutrition Cream",
                                                                                 imageName: "productcream1", price: 18, rating: 4, isFavorite: false, category: "Creams", isBuyed: false, buyedQuantity: 0)])]
        return topMenuItems
    }()

    func getSubMenuProducts(topMenu: ProductCategoryModels) -> [ProductModels]? {
        guard let subMenuProducts = topMenu.subMenuProducts else {
            return nil
        }
        return subMenuProducts
    }
}
