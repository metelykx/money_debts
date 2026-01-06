//
//  SolidButton.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI

struct SolidButton : View {
    var body: some View {
        Button {
            //
        } label: {
            Text("Подробнее")
                .lato(font:.light, size: 12)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .foregroundStyle(.appBlack)
                .overlay {
                    Capsule()
                        .stroke(.appBlack, lineWidth: 1)
                }
                
        }
    }
}
