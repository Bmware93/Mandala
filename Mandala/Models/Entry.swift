//
//  Entry.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 9/27/24.
//

import Foundation

struct Entry: Identifiable, Hashable {
    var mood: Mood
    var timestamp = Date()
    var summary: String = ""
    var details: String = ""
    var id = UUID()
}

extension Entry: Codable {
    enum CodingKeys: String, CodingKey {
        case mood, timestamp, id
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(mood, forKey: .mood)
        try container.encode(timestamp, forKey: .timestamp)
        try container.encode(id, forKey: .id)
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        mood = try container.decode(Mood.self, forKey: .mood)
        timestamp = try container.decode(Date.self, forKey: .timestamp)
        id = try container.decode(UUID.self, forKey: .id)
    }
}


