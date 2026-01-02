//
//  ButtonView.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button {
            //
        } label: {
            Text("Оплатить")
                .lato(font:.light, size: 12)
                .foregroundStyle(.white)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .background(.appBlack)
                .clipShape(.capsule)
            
        }
    }
}
