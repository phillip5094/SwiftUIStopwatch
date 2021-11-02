//
//  StopwatchSettings.swift
//  MacStopwatch
//
//  Created by NHN on 2021/11/03.
//

import SwiftUI

struct StopwatchSettings: View {
    @AppStorage("ElapsedTimeView.zoom")
    private var zoom: ElapsedTimeView.Zoom = .big
    
    var body: some View {
        Form {
            Form {
                Picker("Zoom: ", selection: $zoom) {
                    ForEach(ElapsedTimeView.Zoom.allCases) { level in
                        Text(level.rawValue)
                    }
                }
                .pickerStyle(InlinePickerStyle())
            }
        }
        .frame(width: 200)
        .navigationTitle("Stopwatch Settings")
        .padding()
        
    }
}

struct StopwatchSettings_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchSettings()
    }
}
