//
//  ControlButton.swift
//  Stopwatch
//
//  Created by NHN on 2021/10/31.
//

import SwiftUI

struct ControlButton: View {
    var title: String
    var bgColor: Color
    var textColor: Color
    var opacity: CGFloat = 0.4
    var action: (() -> Void)?
    
    var body: some View {
        GeometryReader { geometry in
            Button(action: {
                guard let action = action else { return }
                action()
            }) {
                ZStack {
                    Circle()
                        .strokeBorder(bgColor, lineWidth: 2)
                        .frame(
                            width: min(geometry.size.width , geometry.size.height),
                            height: min(geometry.size.width, geometry.size.height)
                        )
                        .opacity(opacity)
                    
                    Circle()
                        .fill(bgColor.opacity(opacity))
                        .frame(
                            width: min(geometry.size.width, geometry.size.height) - 8,
                            height: min(geometry.size.width, geometry.size.height) - 8
                        )
                        .overlay(
                            Text(title)
                                .foregroundColor(textColor)
                                .background(Color.clear)
                        )
                }
            }
            .buttonStyle(.plain)
            .position(x: geometry.frame(in: .local).midX, y: geometry.frame(in: .local).midY)
        }
        .scaledToFit()
    }
}

struct ControlButton_Previews: PreviewProvider {
    static var previews: some View {
        ControlButton(title: "시작", bgColor: .green, textColor: .yellow, action: {})
            .previewLayout(.fixed(width: 400, height: 200))
            .preferredColorScheme(.dark)

    }
}
