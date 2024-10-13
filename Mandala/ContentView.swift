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
            Menu {
                ForEach(Mood.allCases, id: \.self) { mood in
                    Button {
                        addEntry(mood: mood)
                    } label: {
                        mood.shortName
                    }
                }
            } label: {
                Label("New Entry", systemImage: "plus")
            }
            
            ForEach(allEntries) { entry in
                EntryRowView(entry: entry)
            }
            .onDelete(perform: delete(at:))
        }
    
    }
    func delete(at offsets: IndexSet) {
        allEntries.remove(atOffsets: offsets)
    }
    
    func addEntry(mood: Mood) {
        withAnimation {
            let entry = Entry(mood: mood)
            allEntries.insert(entry, at: 0)
        }
    }
}

#Preview {
    ContentView(allEntries: [
        Entry(mood: .getRandomMood()),
        Entry(mood: .getRandomMood()),
        Entry(mood: .getRandomMood())
    ])
}
