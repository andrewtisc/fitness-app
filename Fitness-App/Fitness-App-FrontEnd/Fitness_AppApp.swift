//
//  Fitness_App-FrontEndApp.swift
//  Fitness-App-FrontEnd
//
//  Created by Andrew Tischhauser on 2/9/24.
//

import SwiftUI

@main
struct Fitness_App_FrontEndApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
