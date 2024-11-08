//
//  EntryDetailView.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 10/16/24.
//

import SwiftUI

struct EntryDetailView: View {
    @State var entry: Entry
    
    var body: some View {
        Form {
            Picker("Mood", selection: $entry.mood) {
                ForEach(Mood.allCases, id: \.self) { mood in
                    mood.shortName
                        .tag(mood)
                }
                
            }
           
            Section {
                TextField("Summary", text: $entry.summary)
                DatePicker("Date", selection: $entry.timestamp)
            }
            
            Section(header: Text("Additional Details")) {
                TextEditor(text: $entry.details)
            }
        }
        .navigationTitle("Entry")
        .navigationBarTitleDisplayMode(.inline)
    }
           
}

#Preview {
    let entry = Entry(mood: .joy)
    let detail = EntryDetailView(entry: entry)
    NavigationStack {
        detail
    }
}
