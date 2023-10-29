//
//  ImageCapsule.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 29.10.2023.
//

import SwiftUI

struct ImageCapsule: View {
    private var imageName: String

    init(_ imageName: String) {
        self.imageName = imageName
    }

    var body: some View {
        Image(imageName)
            .resizable()
            .clipShape(.capsule)
            .frame(width: 125, height: 175, alignment: .leading)
    }
}

//#Preview {
//    ImageCapsule()
//}
