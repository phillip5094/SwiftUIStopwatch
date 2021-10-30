//
//  StopwatchControl.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

struct StopwatchControl: View {
    var mode: StopwatchManager.Mode
    var leftButtonTap: () -> Void
    var rightButtonTap: () -> Void
    var body: some View {
        HStack {
            LeftButton(mode: mode, action: leftButtonTap)
            Color.clear
            RightButton(mode: mode, action: rightButtonTap)
        }
        .padding(.horizontal)
        
    }
}

struct StopwatchControl_Previews: PreviewProvider {
    @State static var stopwatchManager = StopwatchManager()
    static var previews: some View {
        return StopwatchControl(mode: stopwatchManager.mode,
                                leftButtonTap: stopwatchManager.resetOrLapTime,
                                rightButtonTap: stopwatchManager.startOrPause)
            .previewLayout(.fixed(width: 500, height: 100))
            .preferredColorScheme(.dark)
    }
}
