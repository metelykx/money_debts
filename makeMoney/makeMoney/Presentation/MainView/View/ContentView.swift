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
            ScrollView {
                VStack(alignment: .leading) {
                    MainViewContentHeader()
                }
                .padding(.top, 140)
            }
        }
        .padding(.horizontal)
        .background(.appBlack)
    }
}


#Preview {
    ContentView()
}
