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
            DatePicker("Date", selection: $entry.timestamp)
        }
        .navigationTitle("Entry")
    }
       
}

#Preview {
    let entry = Entry(mood: .joy)
    let detail = EntryDetailView(entry: entry)
    NavigationStack {
        detail
    }
}
