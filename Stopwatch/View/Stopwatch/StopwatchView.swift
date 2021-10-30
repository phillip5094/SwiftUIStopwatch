//
//  StopwatchView.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

struct StopwatchView: View {
    @EnvironmentObject var stopwatchManager: StopwatchManager
    
    var body: some View {
        VStack {
            ElapsedTimeView(time: stopwatchManager.stopwatch.elapsedTime)
            
            StopwatchControl(mode: stopwatchManager.mode,
                             leftButtonTap: stopwatchManager.resetOrLapTime,
                             rightButtonTap: stopwatchManager.startOrPause)
                .frame(height: 60)
                
                
            LapTimeList(mode: stopwatchManager.mode,
                        lapTimes: stopwatchManager.stopwatch.lapTimes,
                        currentLapTime: stopwatchManager.stopwatch.lapTime)
        }
    }
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchView()
            .environmentObject(StopwatchManager())
            .preferredColorScheme(.dark)
    }
}
