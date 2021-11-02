//
//  ElapsedTimeView.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

struct ElapsedTimeView: View {
    var time: String
    
    @AppStorage("ElapsedTimeView.zoom")
    private var zoom: Zoom = .big
    
    enum Zoom: String, CaseIterable, Identifiable {
        case small = "Small"
        case medium = "Medium"
        case big = "Big"
        var id: Zoom { return self }
    }
    
    var fontSize: CGFloat {
        switch zoom {
        case .small:
            return 40
        case .medium:
            return 60
        case .big:
            return 80
        }
    }
    
    var body: some View {
        TimeView(time: time, fontSize: fontSize)
    }
}

struct ElapsedTimeView_Previews: PreviewProvider {
    static var previews: some View {
        ElapsedTimeView(time: "01:23.45")
            .preferredColorScheme(.dark)
    }
}
