//
//  ContentView.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            HeaderView(page: HeaderViewContent(totalPrice: "723 434", title: "Сумма долга", date: "12 декабря", pageType: .main), action: {
                print("добавить")
            })
            .zIndex(1)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    MainViewContentHeader()
                    VStack(alignment: .leading, spacing: 19) {
                        PaymentCard()
                        PaymentCard()
                        PaymentCard()
                        PaymentCard()
                    }
                }
                .padding(.top, 130)
                .padding(.bottom, 70)
            }
        }
        .padding(.horizontal)
        .background(.appBlack)
    }
}


#Preview {
    ContentView()
}
