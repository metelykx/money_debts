//
//  ViewExt.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI

extension View {
    func lato(font: Lato = .regular, size: CGFloat = 14) -> some View {
        self.font(.custom(font.rawValue, size: size))
    }
}
