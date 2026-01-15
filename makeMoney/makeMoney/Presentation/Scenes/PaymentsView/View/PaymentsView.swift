//
//  PaymentsVie.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 06.01.2026.
//

import SwiftUI

struct PaymentsView: View {
    @State var date: Date? = .now
    @Binding var path: NavigationPath
    var body : some View {
        ZStack(alignment: .top) {
            HeaderView(
                page: HeaderViewContent(
                    totalPrice: "25 500",
                    title: "Платежей",
                    date: (date ?? .now).withoutDayMonthYear,
                    pageType: .paymentList
                ),
                date: $date
            )
            .zIndex(1)
            ScrollView(showsIndicators: false) {
                
                VStack(alignment: .leading, spacing: 19) {
                    PaymentCard(path: $path)
                    PaymentCard(path: $path)
                }
                .padding(.top, 130)
                .padding(.bottom, 70)
            }
        }
        .padding(.horizontal, 16)
        .background(.appBlack)
    }
}

