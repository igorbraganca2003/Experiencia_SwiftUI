//
//  CardsApp.swift
//  Cards
//
//  Created by Igor Bragança Toledo on 07/08/23.
//

import SwiftUI

@main
struct CardsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

//Soli Deo Gloria
