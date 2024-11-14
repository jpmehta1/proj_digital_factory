//
//  ContentView.swift
//  Digital_Factory
//
//  Created by Jeet P Mehta on 13/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        ZStack {
//            // Full-screen background color
//            Color(.black)
//                .edgesIgnoringSafeArea(.all) // Ensures the color covers the entire screen
//            
//            ZStack{
//                Rectangle()
//                        .fill(Color(hex: "#53D9BA"))
//                        .frame(width: 355,height:180)
//                        .cornerRadius(10)
//                
//                Rectangle()
//                    .fill(Color(hex: "#E6CFB9"))
//                    .frame(width: 310,height:150)
//                    .cornerRadius(10)
//                
//            }
//            .padding(.bottom,440)
         
            VStack{
                HStack(spacing: 25){
                    RectangleButton(label: "AC")
                    
                    RectangleButton(label: "+/-")
                    
                    RectangleButton(label: "%")
                    
                    RectangleButton(label: "÷")
                }
                .padding(.bottom,20)
                
                HStack(spacing: 25){
                    
                    RectangleButton(label: "7")
                    
                    RectangleButton(label: "8")
                    
                    RectangleButton(label: "9")
                    
                    RectangleButton(label: "×")
                    
                }
                .padding(.bottom,20)
                HStack(spacing: 25){
                    RectangleButton(label: "4")
                    
                    RectangleButton(label: "5")
                    
                    RectangleButton(label: "6")
                    
                    RectangleButton(label: "-")
                    
                }
                .padding(.bottom,20)
                HStack(spacing: 25){
                    RectangleButton(label: "1")
                    
                    RectangleButton(label: "2")
                    
                    RectangleButton(label: "3")
                    
                    RectangleButton(label: "+")
                    
                }
                .padding(.bottom,20)
                
                HStack(spacing: 25){
                    RectangleButton(label: "0")
                    
                    RectangleButton(label: ".")
                    
                    Rectangle()
                    .fill(Color(hex: "#C59C55"))
                    .frame(width: 165, height: 70)
                    .cornerRadius(5)
                    .overlay(
                        Text("=")
                            .foregroundColor(.white)
                            .font(.system(size:30))
                    )
                }
                .padding(.bottom,20)
                
            }
            .padding(.top,300)
            
        }
    }
}

#Preview {
    ContentView()
}
