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
        HStack {
            Text(verbatim: entry.mood.emoji)
                .font(.system(size: 36))
                .padding(10)
                .background(MoodView(mood: entry.mood))
                    
            VStack(alignment: .leading) {
                entry.mood.longName
                    .font(.headline)
                
                Text("on \(entry.timestamp, style: .date)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
        .padding(.vertical)
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
