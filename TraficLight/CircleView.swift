//
//  CircleView.swift
//  TrafficLightSUI
//
//  Created by Anton Godunov on 19.04.2024.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
             .foregroundStyle(color)
             .frame(width: 130)
             .opacity(opacity)
             .overlay(Circle().stroke(.white, lineWidth: 5))
             .shadow(color: color, radius: 10)
             .padding()
    }
}

#Preview {
    CircleView(color: .red, opacity: 1)
}
