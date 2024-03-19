//
//  ContentView.swift
//  MusicByLocation
//
//  Created by Ouahchia, Mohamed (JD) on 19/03/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var locationHandler = LocationHandler()
    
    var body: some View {
        VStack {
            Text(locationHandler.lastKnownLocation)
            Spacer()
            Button("Find Music", action: {})
        } .onAppear(perform: {
            locationHandler.requestAuthorisation()
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
