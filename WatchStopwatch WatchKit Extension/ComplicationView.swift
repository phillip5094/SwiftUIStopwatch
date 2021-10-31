//
//  ComplicationView.swift
//  WatchStopwatch WatchKit Extension
//
//  Created by NHN on 2021/11/01.
//

import SwiftUI
import ClockKit

struct ComplicationView: View {
    var body: some View {
        VStack {
            Text("Template Preview")
        }
    }
}

struct ComplicationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CLKComplicationTemplateGraphicRectangularFullView(ComplicationView())
                .previewContext()
            CLKComplicationTemplateGraphicCornerCircularView(ComplicationView())
                .previewContext()
            CLKComplicationTemplateGraphicCircularView(ComplicationView())
                .previewContext()
        }   
    }
}
