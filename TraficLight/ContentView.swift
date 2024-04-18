//
//  ContentView.swift
//  TraficLight
//
//  Created by Anton Godunov on 18.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isPressed: Bool = false
    @State private var curentLight = CurrentLight.red
    @State private var opasRed = 0.3
    @State private var opasYellow = 0.3
    @State private var opasGreen = 0.3
    private let lightOn = 1.0
    private let lightOff = 0.3
    var body: some View {
        VStack {
           Circle()
                .foregroundStyle(.red)
                .frame(width: 130, height: 130)
                .opacity(opasRed)
                .overlay(Circle().stroke(.white, lineWidth: 5))
                .shadow(radius: 10)
                .padding()
            Circle()
                 .foregroundStyle(.yellow)
                 .frame(width: 130, height: 130)
                 .opacity(opasYellow)
                 .overlay(Circle().stroke(.white, lineWidth: 5))
                 .shadow(radius: 10)
                 .padding()
            Circle()
                 .foregroundStyle(.green)
                 .frame(width: 130, height: 130)
                 .opacity(opasGreen)
                 .overlay(Circle().stroke(.white, lineWidth: 5))
                 .shadow(radius: 10)
                 .padding()
            Spacer()
            Button(action: {switchLight()}, label: {
                ZStack {
                    RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                        .frame(width: 250, height: 100)
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 30, height: 30)).stroke(Color.white, lineWidth: 5))
                        .shadow(radius: 5)
                    
                    Text(isPressed ? "NEXT" : "START")
                        .foregroundStyle(.white)
                        .font(.title)
                        .fontWeight(.bold)
                }
            })
        }
        
    }
}
extension ContentView {
    private func switchLight() {
        if isPressed {}
        else { isPressed = true}
        
        switch curentLight {
               case .red:
                   opasGreen = lightOff
                   opasRed = lightOn
                   curentLight = .yellow
               case .yellow:
            opasRed = lightOff
            opasYellow = lightOn
                   curentLight = .green
               case .green:
            opasYellow = lightOff
            opasGreen = lightOn
                   curentLight = .red
               }
    }
}

extension ContentView {
    enum CurrentLight {
        case red, yellow, green
    }
}

#Preview {
    ContentView()
}
