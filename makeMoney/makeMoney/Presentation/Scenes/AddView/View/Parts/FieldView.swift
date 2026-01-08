//
//  FieldView.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 08.01.2026.
//

import SwiftUI


struct FieldView: View {
    var placeHolder: String
    @Binding var text: String
    var isTextField: Bool = true
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(placeHolder)
                .lato(font: .light, size: 14)
                .foregroundStyle(.white)
            
            if isTextField {
                TextField("", text: $text)
                    .frame(height: 48)
                    .padding(.horizontal, 10)
                    .background(.appGray)
                    .clipShape(Capsule())
                    .overlay {
                        Capsule()
                            .stroke(.appGray, lineWidth: 1)
                    }
            } else {
                TextEditor(text: $text)
                    .frame(height: 154)
                    .padding(.horizontal, 10)
                    .background(.appGray)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.appGray, lineWidth: 1)
                    }
            }
        }
    }
}
