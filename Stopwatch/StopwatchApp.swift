//
//  StopwatchApp.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

@main
struct StopwatchApp: App {
    @StateObject private var stopwatchManager = StopwatchManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(stopwatchManager)
                .preferredColorScheme(.dark)
        }
    }
}
