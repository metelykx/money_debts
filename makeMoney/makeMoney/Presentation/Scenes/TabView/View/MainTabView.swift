//
//  MainTabView.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI

struct MainTabView: View {
    @State var selectionPage: TabPage = .main
    @Binding var path: NavigationPath
    ///скрываем стандартную реализацию
    init(path: Binding<NavigationPath>) {
        UITabBar.appearance().isHidden = true
        self._path = path
    }
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectionPage) {
                ContentView(path: $path)
                    .tag(TabPage.main)
                PaymentsView(path: $path)
                    .tag(TabPage.paymentList)
            }
            
            HStack(spacing: 62) {
                TabItem(image: "house", text: "Главная",pageType: .main, selected: $selectionPage)
                TabItem(image: "list.bullet.rectangle.portrait", text: "Платежи", pageType: .paymentList, selected: $selectionPage)
                
                
            }.frame(maxWidth: .infinity)
                .padding(.top, 20)
                .padding(.bottom, 1)
            
        }
    }
}



struct TabItem: View {
    
    var image: String
    var text: String
    var pageType: TabPage
    @Binding var selected: TabPage
    
    var body: some View {
        Button {
            selected = pageType
        } label: {
            VStack {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width:16, height: 16)
                    
                Text(text)
                    .lato(font: .light, size: 18)
            }.foregroundStyle(pageType == selected ? .appBlack : .appYellow)
                .padding(.vertical, 6)
                .padding(.horizontal, 17)
                .background(pageType == selected ? .appYellow : .clear)
                .clipShape(RoundedRectangle(cornerRadius: 35))
                
        }
        
    }
}
