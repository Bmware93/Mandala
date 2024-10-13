//
//  EntryStore.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 10/12/24.
//

import Foundation

class EntryStore {
    var allEntries = [Entry]()
    
    init(entries: [Entry]) {
        allEntries = entries
    }
    
    init(){
        load()
    }
    
    func load() {
        
    }
    
    func save() {
        
    }
}
