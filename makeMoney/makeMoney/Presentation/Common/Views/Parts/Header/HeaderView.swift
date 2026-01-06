//
//  HeaderView.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("723 434 $")
                    .lato(font:.bold,size: 27)
                    .foregroundStyle(.white)
                    .offset(y: -2)
                Spacer()
                Button {
                    //
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
            VStack(alignment: .leading) {
                Text("Cумма долга")
                    .lato(font: .bold, size: 32)
                Text("15 декабря")
                    .lato(font: .light, size: 16)
            }.foregroundStyle(.appYellow)
        }
        .padding(.bottom, 20)
        .background(.appBlack)
    }
}
