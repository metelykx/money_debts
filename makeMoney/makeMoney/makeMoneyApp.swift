//
//  makeMoneyApp.swift
//  makeMoney
//
//  Created by Denis Ivaschenko on 02.01.2026.
//

import SwiftUI
import CoreData

@main
struct makeMoneyApp: App {
    @State var path: NavigationPath = .init()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $path) {
                MainTabView(path: $path)
                    .navigationBarHidden(true)
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .navigationDestination(for: NavigationPage.self) { page in
                        switch page {
                        case .details :
                            DetailsView(path: $path)
                        }
                    }
            }
                
        }
    }
}
