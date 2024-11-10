//
//  VacationsInCaliApp.swift
//  VacationsInCali
//
//  Created by Sebastian Garcia on 16/10/24.
//

import SwiftUI

@main
struct VacationsInCaliApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Place.self)
    }
}
