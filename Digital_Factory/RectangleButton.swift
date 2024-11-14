//
//  SwiftUIView.swift
//  Digital_Factory
//
//  Created by Jeet P Mehta on 13/11/24.
//

import SwiftUI

struct RectangleButton: View {
    var label: String?
    var color: Color = Color(hex: "#3D5E7E")
    var width: CGFloat = 70
    var height: CGFloat = 70
    var action: () -> Void = { }// Action to perform on tap

    var body: some View {
        Button(action: action) {
            Rectangle()
                .fill(color)
                .frame(width: width, height: height)
                .cornerRadius(5)
                .overlay(
                    Group {
                        if let label = label {
                            Text(label)
                                .foregroundColor(.white)
                                .fontWeight(.heavy)
                                .font(.system(size: 22, design: .monospaced))
                        }
                    }
                )
        }
    }
}

