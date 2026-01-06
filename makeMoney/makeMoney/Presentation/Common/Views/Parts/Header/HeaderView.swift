//
//  HeaderView.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI

struct HeaderView: View {
    var page: HeaderViewContent
    var action: () -> Void
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(page.totalPrice)$")
                    .lato(font:.bold,size: 27)
                    .foregroundStyle(.white)
                    .offset(y: -2)
                Spacer()
                if page.pageType == .main {
                    Button {
                        action()
                    } label: {
                        ZStack {
                            Circle()
                                .fill(.appYellow)
                                .frame(width: 25)
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .frame(width:11)
                                .foregroundStyle(.appBlack)
                        }
                    }
                }
               
            }
            VStack(alignment: .leading) {
                HStack {
                    Text("\(page.title)")
                        .lato(font: .bold, size: 32)
                    Spacer()
                    if page.pageType == .paymentList {
                        Button {
                            action()
                        } label: {
                            Image(systemName: "calendar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 23, height: 23)
                                .padding(.top, 4)
                        }
                    }
                }
                
                Text(page.date)
                    .lato(font: .light, size: 16)
            }.foregroundStyle(.appYellow)
        }
        .padding(.bottom, 20)
        .background(.appBlack)
    }
}
