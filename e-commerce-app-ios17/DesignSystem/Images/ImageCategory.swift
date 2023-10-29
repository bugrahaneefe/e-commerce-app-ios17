//
//  ImageCategory.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 29.10.2023.
//

import SwiftUI

struct ImageCategory: View {

    private var imageName: String

    init(_ imageName: String) {
        self.imageName = imageName
    }

    var body: some View {
        Image(imageName)
            .frame(width: 100, height: 50)
            .background(.ecLightOrange)
            .ignoresSafeArea()
            .padding(.zero)
    }
}

//#Preview {
//    ImageCategory()
//}
