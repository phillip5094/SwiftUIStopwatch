//
//  StopwatchCommand.swift
//  Stopwatch
//
//  Created by NHN on 2021/11/03.
//

import SwiftUI

struct StopwatchCommand: Commands {
    private struct MenuContent: View {
        @FocusedBinding(\.stopwatchMode) var mode
        
        var body: some View {
            Button("\(mode == .stopped ? "Start Stopwatch" : "Stop Stopwatch")") {
                if mode == .stopped {
                    mode = .running
                } else {
                    mode = .stopped
                }
            }
            .keyboardShortcut("s", modifiers: [.shift, .option])
            
        }
    }
    
    var body: some Commands {
        CommandMenu("Stopwatch") {
            MenuContent()
        }
    }
}

private struct StopwatchModeKey: FocusedValueKey {
    typealias Value = Binding<StopwatchManager.Mode>
}

extension FocusedValues {
    var stopwatchMode: Binding<StopwatchManager.Mode>? {
        get { self[StopwatchModeKey.self] }
        set { self[StopwatchModeKey.self] = newValue }
    }
}
