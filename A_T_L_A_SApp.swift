//
//  A_T_L_A_SApp.swift
//  A.T.L.A.S
//
//  Created by Zach Eidenberger on 12/3/24.
//

import SwiftUI

@main
struct A_T_L_A_SApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
