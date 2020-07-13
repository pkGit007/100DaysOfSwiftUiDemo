//
//  ImagesView.swift
//  100DaysOfSwiftUI
//
//  Created by Khasnobis, Pritha on 12/07/20.
//

import SwiftUI

struct ImagesView: View {
    
    @State private var animate = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Normal Image:")
                Image("Flower")
                    .resizable()
                    .frame(width: 100, height: 100)
            }
            
            HStack {
                Text("3D Rotated Image:")
                
                Image("Flower")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
            }
            
            HStack {
                Text("Bordered Image:")
                Image("Flower")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(50)
                    .overlay(RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.orange, lineWidth: 4))
                    .shadow(radius: 50)
            }
            
                        
            HStack {
                if animate {
                    Image("Flower")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .transition(AnyTransition.slide)
                        .animation(.default)
                }
                Button("Slide Image") {
                    self.animate.toggle()
                }.frame(width: 100, height: 40)
            }
            
            HStack {
                Text("Blurred Image:")
                Image("Flower")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .saturation(Double(0.8))
                    .blur(radius: (1 - 0.8) * 20)
            }
            
            
            HStack {
                Text("Blended Image:")
                ZStack {
                    Image("Flower")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.red)
                        .blendMode(.multiply)
                }
                .frame(width: 100, height: 100)
                .clipped()
            }
            
        }.navigationBarTitle("Images")
        
    }
}


