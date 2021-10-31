//
//  ContentView.swift
//  WatchStopwatch WatchKit Extension
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        StopwatchView()
            .minimumScaleFactor(0.3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StopwatchManager())
            .preferredColorScheme(.dark)
    }
}
