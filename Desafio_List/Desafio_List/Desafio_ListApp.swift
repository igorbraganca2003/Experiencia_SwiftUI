//
//  Desafio_ListApp.swift
//  Desafio_List
//
//  Created by Igor Bragança Toledo on 10/08/23.
//

import SwiftUI

@main
struct Desafio_ListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
