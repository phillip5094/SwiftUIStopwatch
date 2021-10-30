//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import Foundation

struct Stopwatch {
    var millisecondElapsed: Double  // 스톱워치 경과시간(ms)
    var lapElapsed: Double          // 랩타임 경과시간(ms)
    var lapTimes: [String]          // 랩타임 목록

    var elapsedTime: String {       // 스톱워치 경과시간(ms)를 문자열(mm:ss.SS)로 저장
        return timeString(millisecondElapsed)
    }

    var lapTime: String {           // 랩타임 경과시간(ms)를 문자열(mm:ss.SS)로 저장
        return timeString(lapElapsed)
    }
}

private extension Stopwatch {
    func timeString(_ millisecond: Double) -> String {
        let secondElapsed = (Int(millisecond) % 1000) % 60
        let minuteElapsed = ((Int(millisecond) % 1000) / 60) % 60
        return String(format: "%02d:%02d.%02d", minuteElapsed, secondElapsed, Int(millisecond * 100) % 100 )
    }
}
