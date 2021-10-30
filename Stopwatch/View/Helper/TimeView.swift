//
//  TimeView.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

struct TimeView: View {
    var time: String
    var fontSize: CGFloat?
    
    var body: some View {
        Text(time)
            .font(fontSize == nil
                  ? Font.body.monospacedDigit()
                  : .system(size: fontSize!).monospacedDigit()
            )
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TimeView(time: "01:23:45")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            
            TimeView(time: "01:23:45", fontSize: 80)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
        
    }
}
