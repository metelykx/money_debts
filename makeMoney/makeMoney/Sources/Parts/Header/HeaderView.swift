//
//  HeaderView.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
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
            VStack {
                Text("")
                Text("")
            }
        }
    }
}
