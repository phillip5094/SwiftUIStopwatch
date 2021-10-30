//
//  StopwatchManager.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import Foundation
import SwiftUI

class StopwatchManager: ObservableObject {
    @Published var stopwatch: Stopwatch = Stopwatch(millisecondElapsed: 0.000, lapElapsed: 0.000, lapTimes: [])
    private var timer = Timer()
    
    enum Mode {
        case stopped
        case running
        case paused
    }
    
    @Published var mode: Mode = .stopped {
        didSet {
            switch mode {
            case .stopped:
                self.stopTimer()    // 타이머 종료
                break
            case .running:
                self.startTimer()   // 타이머 시작
                break
            case .paused:
                self.pauseTimer()   // 타이머 일시정지
                break
            }
        }
    }
}

// MARK: Control Stopwatch
extension StopwatchManager {
    func resetOrLapTime() {
        switch mode {
        case .stopped:
            return
        case .running:
            self.recordLapTime()
        case .paused:
            self.stopStopwatch()
        }
    }
    
    func startOrPause() {
        switch mode {
        case .stopped:
            self.startStopwatch()
        case .running:
            self.pauseStopwatch()
        case .paused:
            self.startStopwatch()
        }
    }
}

// MARK: User Event
private extension StopwatchManager {
    func stopStopwatch() {
        self.mode = .stopped
    }
    
    func startStopwatch() {
        self.mode = .running
    }
    
    func pauseStopwatch() {
        self.mode = .paused
    }

    func recordLapTime() {
        self.stopwatch.lapTimes.append(self.stopwatch.lapTime)
        self.stopwatch.lapElapsed = 0.000
    }
}

// MARK: Control Timer
private extension StopwatchManager {
    func stopTimer() {
        self.timer.invalidate()
        self.stopwatch.millisecondElapsed = 0.000
        self.stopwatch.lapElapsed = 0.000
        self.stopwatch.lapTimes.removeAll()
    }
    
    func startTimer() {
        self.timer = Timer(timeInterval: 0.010, repeats: true, block: { _ in
            self.stopwatch.millisecondElapsed += 0.010
            self.stopwatch.lapElapsed += 0.010
        })
        RunLoop.current.add(self.timer, forMode: .common)
    }
    
    func pauseTimer() {
        self.timer.invalidate()
    }
}
