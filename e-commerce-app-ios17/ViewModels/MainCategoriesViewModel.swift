//
//  MainCategoriesViewModel.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 23.10.2023.
//

import SwiftUI
import SwiftData

struct MainCategoriesViewModel: ObservableObject {

    @Environment(\.modelContext) private var modelContext

    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    MainCategoriesViewModel()
}
