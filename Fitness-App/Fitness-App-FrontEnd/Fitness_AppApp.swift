//
//  Fitness_AppApp.swift
//  Fitness-App
//
//  Created by Andrew Tischhauser on 2/9/24.
//

import SwiftUI

@main
struct Fitness_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
