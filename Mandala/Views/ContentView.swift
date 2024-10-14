//
//  ContentView.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 10/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        EntryListView()
    }
}

#Preview {
    let store = EntryStore(entries: [Entry(mood: .anticipation), Entry(mood: .getRandomMood()), Entry(mood: .getRandomMood())])
    ContentView()
        .environmentObject(store)
}
