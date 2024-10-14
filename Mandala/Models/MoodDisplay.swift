//
//  MoodDisplay.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 10/12/24.
//

import SwiftUI

extension Mood {
    var longName: Text {
        switch self {
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
        switch self {
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
    
    var shortName: Text {
        switch self {
        case .anger:
            return Text("Anger")
        case .anticipation:
            return Text("Anticipation")
        case .joy:
            return Text("Joy")
        case .trust:
            return Text("Trust")
        case .fear:
            return Text("Fear")
        case .surprise:
            return Text("Surprise")
        case .sadness:
            return Text("Sadness")
        case .disgust:
            return Text("Disgust")
        }
    }
    
    var color: Color {
        Color(rawValue)
    }
}
