//
//  ContentView.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 10/14/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: EntryStore
    @Environment(\.scenePhase) var scenePhase
    var body: some View {
        EntryListView()
            .onChange(of: scenePhase) {
                if scenePhase == .background {
                    store.save()
                }
            }
    }
}

#Preview {
    let store = EntryStore(entries: [Entry(mood: .anticipation), Entry(mood: .getRandomMood()), Entry(mood: .getRandomMood())])
    ContentView()
        .environmentObject(store)
}
