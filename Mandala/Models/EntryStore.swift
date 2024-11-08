//
//  EntryStore.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 10/12/24.
//

import Foundation

class EntryStore:ObservableObject {
    @Published var allEntries = [Entry]()
    
    init(entries: [Entry]) {
        allEntries = entries
    }
    
    init() {
        load()
    }
    
    func load() {
        do {
            let url = try archiveURL()
            print("Loading entries from url: \(url)")
            let data = try Data(contentsOf: url)
            let unarchiver = PropertyListDecoder()
            let entries = try unarchiver.decode([Entry].self, from: data)
            allEntries = entries
        } catch CocoaError.fileReadNoSuchFile {
            //Ignore error
        } catch let decodingError {
            print("Could not read saved entries: \(decodingError)")
        }
    }
    
    func save() {
        do {
            let url = try archiveURL()
            print("Saving entries to url \(url)")
            let encoder = PropertyListEncoder()
            let data = try encoder.encode(allEntries)
            try data.write(to: url)
            print("Saved entries all entries")
        } catch let endcodingError {
            print("Could not save entries: \(endcodingError)")
        }
        
    }
    
    func update(_ entry: Entry) {
        guard let index = indexForEntry(with: entry.id)
        else { return }
        allEntries[index] = entry
    }
    
    func indexForEntry(with id: Entry.ID) -> Int? {
        allEntries.firstIndex { $0.id == id}
    }
    
    func archiveURL() throws -> URL {
        let documentsDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        return documentsDirectory.appendingPathComponent("entries", conformingTo: .propertyList)
    }
}
