//
//  LapTimeList.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

struct LapTimeList: View {
    var mode: StopwatchManager.Mode
    var lapTimes: [String]
    var currentLapTime: String
    
    var body: some View {
        List {
            if mode != .stopped {
                LapTimeRow(index: lapTimes.count + 1, time: currentLapTime)
            }
            ForEach(lapTimes.indices.reversed(), id:\.self) { index in
                LapTimeRow(index: index + 1, time: lapTimes[index])
            }
        }
        .listStyle(.plain)
    }
}

struct LapTimeList_Previews: PreviewProvider {
    static var previews: some View {
        LapTimeList(mode: .running, lapTimes: [
            "00:00:01",
            "00:00:02",
            "00:00:03",
            "00:00:04",
            "00:00:05",
            "00:00:06",
            "00:00:07",
            "00:00:08",
            "00:00:09",
            "00:00:10",
            "00:00:11",
            "00:00:12",
            "00:00:13",
        ], currentLapTime: "11:12:13")
            .preferredColorScheme(.dark)
    }
}
