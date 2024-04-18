//
//  ContentView.swift
//  TraficLight
//
//  Created by Anton Godunov on 18.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isPressed: Bool = false
    @State private var currentLight: CurrentLight = .off
    var body: some View {
        VStack {
            CircleView(color: .red, opacity: currentLight == .red ? 1 : 0.3)
            CircleView(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
            CircleView(color: .green, opacity: currentLight == .green ? 1 : 0.3)
            Spacer()
            Button(action: {switchLight()}, label: {
                ZStack {
                    RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                        .frame(width: 250, height: 100)
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 30, height: 30)).stroke(Color.white, lineWidth: 5))
                        .shadow(radius: 5)
                    
                    Text(currentLight != .off ? "NEXT" : "START")
                        .foregroundStyle(.white)
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            )
        }
        
    }
}
extension ContentView {
    private func switchLight() {
        if isPressed {}
        else { isPressed = true}
        
        switch currentLight {
               case .red:
            currentLight = .yellow
               case .yellow:
            currentLight = .green
               case .green:
            currentLight = .red
        case .off:
            currentLight = .red
            
        }
    }
}

extension ContentView {
    enum CurrentLight {
        case off, red, yellow, green
    }
}

#Preview {
    ContentView()
}
