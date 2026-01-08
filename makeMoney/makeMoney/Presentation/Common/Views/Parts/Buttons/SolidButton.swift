//
//  SolidButton.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI

struct SolidButton : View {
    var text: String
    var color: Color
    var solid: Color
    var isFull: Bool = false
    var body: some View {
        Button {
            //
        } label: {
            Text(text)
                .lato(font:.regular, size: 12)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .foregroundStyle(isFull ? .appBlack : color)
                .background(isFull ? solid: .appBlack)
                .clipShape(Capsule())
                .overlay {
                    Capsule()
                        .stroke(solid, lineWidth: 1)
                }
                
        }
    }
}
