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
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MainTabView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
                
        }
    }
}
