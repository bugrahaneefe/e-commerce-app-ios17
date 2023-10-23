//
//  MainView.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 23.10.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                MainCategoriesView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                ZStack(alignment: .center) {
                    Color.ecLightOrange.ignoresSafeArea(.all)
                    Image("wtclogo")
                }
            }
        }
    }
}

#Preview {
    MainView()
}
