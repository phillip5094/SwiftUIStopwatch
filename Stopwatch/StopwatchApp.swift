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
        let mainWindow = WindowGroup {
            ContentView()
                .environmentObject(stopwatchManager)
                .preferredColorScheme(.dark)
        }
        
        #if os(macOS)
        mainWindow
            .commands {
                StopwatchCommand()
            }
        #else
        mainWindow
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
        #endif
        
        #if os(macOS)
        Settings {
            StopwatchSettings()
        }
        #endif
    }
}
