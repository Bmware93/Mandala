//
//  Mood.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 9/27/24.
//
import SwiftUI

enum Mood: String, CaseIterable, Codable {
    case anger
    case anticipation
    case joy
    case trust
    case fear
    case surprise
    case sadness
    case disgust
    
    static func getRandomMood() -> Mood {
        Mood.allCases.randomElement()!
    }
}

