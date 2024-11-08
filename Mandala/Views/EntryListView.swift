//
//  ContentView.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 9/27/24.
//

import SwiftUI

struct EntryListView: View {
    @EnvironmentObject var store: EntryStore
    var body: some View {
        List {
            ForEach(store.allEntries) { entry in
                NavigationLink(value: entry) {
                    EntryRowView(entry: entry)
                }
            }
            .onDelete(perform: delete(at:))
        }
        .navigationDestination(for: Entry.self) { entry in
            EntryDetailView(entry: entry)
        }
        .toolbar {
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
        }
    
    }
    
    func delete(at offsets: IndexSet) {
        store.allEntries.remove(atOffsets: offsets)
    }
    
    func addEntry(mood: Mood) {
        withAnimation {
            let entry = Entry(mood: mood)
            store.allEntries.insert(entry, at: 0)
        }
    }
}

#Preview {
    let store = EntryStore(entries: [Entry(mood: .getRandomMood()), Entry(mood: .getRandomMood()), Entry(mood: .getRandomMood())])
    NavigationStack {
        EntryListView()
            .environmentObject(store)
    }
}
