//
//  ContentView.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 9/27/24.
//

import SwiftUI

struct ContentView: View {
    @State var allEntries = [Entry]()
    var body: some View {
        List {
            ForEach(allEntries) { entry in
                Text(entry.mood.rawValue)
            }
        }
    }
}

#Preview {
    ContentView(allEntries: [
        Entry(mood: .anger),
        Entry(mood: .fear),
        Entry(mood: .surprise)
    ])
}
