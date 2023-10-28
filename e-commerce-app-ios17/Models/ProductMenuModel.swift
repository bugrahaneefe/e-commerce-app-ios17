//
//  ProductMenuModel.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 27.10.2023.
//

import SwiftUI
import SwiftData

struct ProductMenuModel {
    @Environment(\.modelContext) private var modelContext
    @Query private var productModels: [ProductModels]

    let mainMenuItems = {
        let topMenuItems = [ProductCategoryModels(name: "Cleaner Serums",
                                                  imageName: "categorycleaner"),
                           ProductCategoryModels(name: "Creams",
                                                 imageName: "categorycream")]
        return topMenuItems
    }()
}




