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
            HeaderView()
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
            }
        }
        .padding(.horizontal)
        .background(.appBlack)
    }
}


#Preview {
    ContentView()
}
