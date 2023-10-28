//
//  BasketView.swift
//  e-commerce-app-ios17
//
//  Created by Buğrahan Efe on 27.10.2023.
//

import SwiftUI
import SwiftData

struct BasketView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var productModels: [ProductModels]
    private let model = ProductMenuModel()

    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    List {

                    }
                }
                }
            }
//            HStack(alignment: .top, spacing: 63) {
//                VStack(alignment: .leading, spacing: 4) {
//                    // MARK: Total Text View
//                    TotalText()
//                }
//                .padding(.leading, 0)
//                .padding(.trailing, 70)
//                .padding(.vertical, 0)
//                VStack(alignment: .leading, spacing: 4) {
//                    // MARK: Total Amount Text View
//                    TotalAmountText(totalAmount: totalAmount)
//                }
//                .padding(.leading, 0)
//                .padding(.trailing, 70)
//                .padding(.vertical, 0)
//            }
//            .padding(.horizontal, 16)
//            .padding(.top, 24)
//            .padding(.bottom, 16)
        }
    }

#Preview {
    BasketView()
}
