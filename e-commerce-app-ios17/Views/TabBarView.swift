//
//  TabBarView.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 27.10.2023.
//

import SwiftUI

struct TabBarView: View {
    @State var selected = 0
    var body: some View {
        ZStack {
            TabView(selection: $selected) {
                MainCategoriesView()
                    .tabItem {
                        Image(systemName: "house.fill")
                    }.tag(0)
                BasketView()
                    .tabItem {
                        Image(systemName: "cart.fill")
                    }.tag(1)
                FavoriteView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                    }.tag(2)
            }
        }.accentColor(.ecLightOrange)
    }
}

#Preview {
    TabBarView()
}
