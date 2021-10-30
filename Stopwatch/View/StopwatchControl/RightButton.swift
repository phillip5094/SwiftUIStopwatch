//
//  RightButton.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

struct RightButton: View {
    var mode: StopwatchManager.Mode
    
    var action: (() -> Void)?
    
    private var title: String {
        mode == .running ? "중단" : "시작"
    }
    
    private let opacity: CGFloat = 0.4
    
    private var bgColor: Color {
        mode == .running ? .red : .green
    }
    private var textColor: Color {
        mode == .running ? .orange : .yellow
    }
    
    var body: some View {
        ControlButton(title: title, bgColor: bgColor, textColor: textColor, opacity: opacity, action: action)
    }
}

struct RightButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RightButton(mode: .stopped)
                .preferredColorScheme(.dark)
                .padding()
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Mode: Stopped")
            
            RightButton(mode: .running)
                .preferredColorScheme(.dark)
                .padding()
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Mode: Running")
            
            RightButton(mode: .paused)
                .preferredColorScheme(.dark)
                .padding()
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Mode: Paused")
        }
    }
}
