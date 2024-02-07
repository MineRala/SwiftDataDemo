//
//  SwiftDataDemoApp.swift
//  SwiftDataDemo
//
//  Created by Mine Rala on 7.02.2024.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
    }
}
