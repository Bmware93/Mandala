//
//  EntryRowView.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 9/27/24.
//

import SwiftUI

struct EntryRowView: View {
    let entry: Entry
    var longName: Text {
        switch entry.mood {
        case .anger:
            return Text("I was angry")
        case .anticipation:
            return Text("I was excited")
        case .joy:
            return Text("I was happy")
        case .trust:
            return Text("I was admired")
        case .fear:
            return Text("I was scared")
        case .surprise:
            return Text("I was surprised")
        case .sadness:
            return Text("I was sad")
        case .disgust:
            return Text("I was disgusted")
        
        }
    }
    
    var emoji: String {
        switch entry.mood {
            case .anger:
            return "😡"
        case .anticipation:
            return "👀"
        case .joy:
            return "😊"
        case .trust:
            return "💙"
        case .fear:
            return "😱"
        case .surprise:
            return "😯"
        case .sadness:
            return "😢"
        case .disgust:
            return "🤢"
        }
    }
    var body: some View {
        HStack {
            Text(verbatim: emoji)
                .font(.system(size: 36))
                .padding(10)
                    
            VStack(alignment: .leading) {
                longName
                    .font(.headline)
                
                Text("on \(entry.timestamp, style: .date)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
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
