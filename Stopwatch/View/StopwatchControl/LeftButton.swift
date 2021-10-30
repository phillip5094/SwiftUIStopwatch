//
//  LeftButton.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

struct LeftButton: View {
    var mode: StopwatchManager.Mode
    var action: (() -> Void)?
    private var title: String {
        mode == .paused ? "재설정" : "랩"
    }
    
    private var opacity: CGFloat {
        mode == .stopped ? 0.4 : 0.8
    }
    
    private let bgColor = Color.gray
    private let textColor = Color.white
    
    var body: some View {
        ControlButton(title: title, bgColor: bgColor, textColor: textColor, opacity: opacity, action: action)
    }
}

struct LeftButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LeftButton(mode: .stopped)
                .preferredColorScheme(.dark)
                .padding()
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Mode: Stopped")
            
            LeftButton(mode: .running)
                .preferredColorScheme(.dark)
                .padding()
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Mode: Running")
            
            LeftButton(mode: .paused)
                .preferredColorScheme(.dark)
                .padding()
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Mode: Paused")
        }
        
    }
}
