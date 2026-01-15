//
//  MainViewContent.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//
import SwiftUI

struct MainViewContentHeader: View {
    @Binding var payType: PayType
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Долги")
                    .lato(font: .bold, size: 16)
                    .foregroundStyle(.appYellow)
                Spacer()
                HStack(spacing: 16) {
                    Button {
                        payType = .mounthly
                    } label: {
                        Text("ежемесячно")
                            .lato(font: payType == . mounthly ? .bold : .light, size: 12)
                            .foregroundStyle(.white)
                    }
                    
                    Button {
                        payType = .oneTime
                    } label: {
                        Text("разово")
                            .lato(font: payType == .oneTime  ? .bold : .light, size: 12)
                            .foregroundStyle(.white)
                    }
                }
            }
            HStack(spacing: 4) {
                Text("$ 25,500 /")
                    .lato(font: .bold, size: 14)
                Text("Каждый месяц")
                    .lato(font: .regular, size: 14)
            }
            .foregroundStyle(.white)
        }
    }
}
