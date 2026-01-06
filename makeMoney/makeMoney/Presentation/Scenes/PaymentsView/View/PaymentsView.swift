//
//  PaymentsVie.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 06.01.2026.
//

import SwiftUI

struct PaymentsView: View {
    var body : some View {
        ZStack(alignment: .top) {
            HeaderView(page: HeaderViewContent(totalPrice: "25 500", title: "Платежей", date: "В декабре 2025", pageType: .paymentList), action: {
                //
            })
                .zIndex(1)
            ScrollView {
                
            }
        }
        .padding(.horizontal, )
        .background(.appBlack)
    }
}
