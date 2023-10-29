//
//  ImageProductDetail.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 29.10.2023.
//

import SwiftUI

struct ImageProductDetail: View {

    private var imageName: String

    init(_ imageName: String) {
        self.imageName = imageName
    }

    var body: some View {
        Image(imageName)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .padding()
            .frame(width: 250, height: 350)
    }
}

//#Preview {
//    ImageProduct()
//}
