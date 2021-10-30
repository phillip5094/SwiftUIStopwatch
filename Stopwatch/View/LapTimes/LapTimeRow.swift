//
//  LapTimeRow.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

struct LapTimeRow: View {
    var index: Int
    var time: String
    
    var body: some View {
        HStack {
            Text("랩 \(index)")
            Spacer()
            TimeView(time: time)
        }
        .padding(.horizontal, 10)
    }
}

struct LapTimeRow_Previews: PreviewProvider {
    static var previews: some View {
        LapTimeRow(index: 3, time: "99:20:59")
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
