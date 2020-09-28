//
//  ARdocApp.swift
//  ARdoc
//
//  Created by Kovs on 28.09.2020.
//

import SwiftUI

@main
struct ARdocApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
