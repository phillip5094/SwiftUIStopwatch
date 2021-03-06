//
//  ContentView.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        StopwatchView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StopwatchManager())
            .preferredColorScheme(.dark)
    }
}
