//
//  List_GridApp.swift
//  List_Grid
//
//  Created by Igor Bragança Toledo on 09/08/23.
//

import SwiftUI

@main
struct List_GridApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
