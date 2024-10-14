//
//  MandalaApp.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 9/27/24.
//

import SwiftUI

@main
struct MandalaApp: App {
    @StateObject var entryStore: EntryStore = .init()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(entryStore)
        }
    }
}
