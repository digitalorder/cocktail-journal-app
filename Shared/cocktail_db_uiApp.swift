//
//  cocktail_db_uiApp.swift
//  Shared
//
//  Created by Denis Vasilkovskii on 27.02.21.
//

import SwiftUI

@main
struct cocktail_db_uiApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
