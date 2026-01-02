//
//  MainTabView.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI

struct MainTabView: View {
    ///скрываем стандартную реализацию
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                ContentView()
            }
            HStack {
                
            }
        }
    }
}
#Preview {
    MainTabView()
}
