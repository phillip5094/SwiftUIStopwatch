//
//  ElapsedTimeView.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

struct ElapsedTimeView: View {
    var time: String
    
    var body: some View {
        TimeView(time: time, fontSize: 80)
    }
}

struct ElapsedTimeView_Previews: PreviewProvider {
    static var previews: some View {
        ElapsedTimeView(time: "01:23.45")
            .preferredColorScheme(.dark)
    }
}
