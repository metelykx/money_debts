//
//  ButtonView.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI

struct ButtonView: View {
    var text: String
    var color: Color
    var fillColor: Color
    var action: (() -> Void)?
    var body: some View {
        Button {
            action?()
        } label: {
            Text(text)
                .lato(font:.light, size: 12)
                .foregroundStyle(color)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .background(fillColor)
                .clipShape(.capsule)
            
        }
    }
}
