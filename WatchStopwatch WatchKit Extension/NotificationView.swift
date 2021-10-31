//
//  NotificationView.swift
//  WatchStopwatch WatchKit Extension
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    
    var body: some View {
        VStack {
            Label(title ?? "Unknown Title", systemImage: "star")
            Text(message ?? "Unknown message")
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView(title: "title", message: "message")
    }
}
