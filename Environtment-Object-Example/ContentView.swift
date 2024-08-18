//
//  ContentView.swift
//  Environtment-Object-Example
//
//  Created by Tony Gultom on 18/08/24.
//

import SwiftUI

struct ContentView: View {
    /*
     EnvironmentObject: It allows you to pass data through the component tree without having to pass props manually at every level.
     
     React Terms: like Context
     */
    @StateObject var settings = GameSettings()
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20.0) {
                Button("Increase Score") {
                    settings.score += 1
                }
                
                NavigationLink(destination: ScoreView(), label: {
                    Text("Show Detail View")
                })
                
                Button("Decrease Score") {
                    settings.score -= 1
                }.disabled(settings.score == 0)
            }.frame(height: 200)
        }.environmentObject(settings)
    }
}

#Preview {
    ContentView()
}
