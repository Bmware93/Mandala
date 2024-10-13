//
//  MoodView.swift
//  Mandala
//
//  Created by Benia Morgan-Ware on 10/11/24.
//

import SwiftUI

struct MoodView: View {
    let mood: Mood
    let overlayGradient = LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.4), .clear]),
        startPoint: .top,
        endPoint: .bottom)
    var body: some View {
        mood.color
            .aspectRatio(contentMode:.fit)
            .overlay(overlayGradient)
            .clipShape(Circle())
    }
}

#Preview {
    let moods: [Mood] = [.anger,.anticipation,.disgust,.fear,.joy,.sadness]
    ForEach(moods, id: \.self) { mood in
        MoodView(mood: mood)
    }
}
