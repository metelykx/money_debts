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
                print("показать календарь")
            })
                .zIndex(1)
            ScrollView(showsIndicators: false) {
                
                    VStack(alignment: .leading, spacing: 19) {
                        PaymentCard()
                        PaymentCard()
                    
                }
                .padding(.top, 130)
                .padding(.bottom, 70)
            }
        }
        .padding(.horizontal, )
        .background(.appBlack)
    }
}
