//
//  ContentView.swift
//  MacStopwatch
//
//  Created by NHN on 2021/11/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        StopwatchView()
            .frame(minWidth: 500, minHeight: 500)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StopwatchManager())
            .preferredColorScheme(.dark)
    }
}
