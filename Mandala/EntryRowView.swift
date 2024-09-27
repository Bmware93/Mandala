//
//  EntryRowView.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 9/27/24.
//

import SwiftUI

struct EntryRowView: View {
    let entry: Entry
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(entry.mood.rawValue)
                .font(.headline)
            
            Text("on \(entry.timestamp, style: .date)")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    let testEntries = [
        Entry(mood: .anger),
        Entry(mood: .anticipation),
        Entry(mood: .fear)
    ]
    return ForEach(testEntries) { entry in
        EntryRowView(entry: entry)
            .padding()
            .background(Color.gray.opacity(0.1))
            .frame(width: .infinity, height: 100)
    }
}
