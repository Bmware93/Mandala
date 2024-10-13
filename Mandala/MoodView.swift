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
    MoodView(mood: .sadness)
        .padding()
        //.previewLayout(.fixed(width: 100, height: 100))
}
