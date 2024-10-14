//
//  Entry.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 9/27/24.
//

import Foundation

struct Entry: Identifiable, Codable {
    var mood: Mood
    var timestamp = Date()
    var id = UUID()
}
