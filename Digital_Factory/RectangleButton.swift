//
//  SwiftUIView.swift
//  Digital_Factory
//
//  Created by Jeet P Mehta on 13/11/24.
//

import SwiftUI

// A reusable button component with customizable label, color, size, and action
struct RectangleButton: View {
    // MARK: - Properties
    
    var label: String?               // Label text displayed on the button
    var color: Color = Color(hex: "#3D5E7E") // Background color of the button, default is set
    var width: CGFloat = 70          // Button width, default is 70
    var height: CGFloat = 70         // Button height, default is 70
    var action: () -> Void = { }     // Action to perform when the button is tapped

    var body: some View {
        // Button with rectangle shape and custom styling
        Button(action: action) {
            Rectangle()
                .fill(color)          // Sets the background color
                .frame(width: width, height: height) // Defines the button's width and height
                .cornerRadius(5)      // Rounds the corners of the button
                .overlay(
                    // Displays the label text, if available, centered on the button
                    Group {
                        if let label = label {
                            Text(label)
                                .foregroundColor(.white)    // Sets text color to white
                                .fontWeight(.heavy)         // Makes the font bold
                                .font(.system(size: 22, design: .monospaced)) // Sets font size and design
                        }
                    }
                )
        }
    }
}
