//
//  InfoTagView.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 06.01.2026.
//

import SwiftUI

struct InfoTagView: View {
    var text: String
    var body: some View {
        Text(text)
            .lato(font: .bold, size: 16)
            .foregroundStyle(.appYellow)
            .padding(.horizontal, 17)
            .padding(.bottom, 9)
            .padding(.top, 5)
            .overlay {
                Capsule()
                    .stroke(.appYellow, lineWidth: 1)
            }
        
    }
}
