//
//  ProductCategoryModels.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 27.10.2023.
//

import Foundation

struct ProductCategoryModels: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let imageName: String
}
