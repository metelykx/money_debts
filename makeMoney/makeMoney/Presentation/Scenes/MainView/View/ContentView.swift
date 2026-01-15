//
//  ContentView.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var isShow: Bool = false
    @State var payType: PayType = .mounthly
    var body: some View {
        ZStack(alignment: .top) {
            HeaderView(page: HeaderViewContent(totalPrice: "723 434", title: "Сумма долга", date: "12 декабря", pageType: .main), action: {
                isShow.toggle()
            }, date: .constant(.now))
            .zIndex(1)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    MainViewContentHeader(payType: $payType)
                    VStack(alignment: .leading, spacing: 19) {
                        switch payType {
                        case .mounthly:
                            PaymentCard()
                            PaymentCard()
                            PaymentCard()
                            PaymentCard()
                        case .oneTime:
                            PaymentCard()
                            PaymentCard()
                        }
                        
                    }
                }
                .padding(.top, 130)
                .padding(.bottom, 70)
            }
        }
        .padding(.horizontal)
        .background(.appBlack)
        .sheet(isPresented: $isShow) {
            AddView()
        }
    }
}


#Preview {
    ContentView()
}
