//
//  TextsView.swift
//  100DaysOfSwiftUI
//
//  Created by Khasnobis, Pritha on 12/07/20.
//

import SwiftUI

struct TextsView: View {
    var body: some View {
            VStack {
            
            Text("HELLO!")
                .shadow(color: .black, radius: 1)
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .bold))
            
            Text("WELCOME TO")
                .shadow(color: .green, radius: 3)
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .bold))
            
            OutlinedText(text: " 100 Days of SwiftUI ", width: 0.5, color: .red)
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .bold))
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.red, lineWidth: 5)
                )
            
            Text("We are studying about different swift UI components in 100 days and this is a multiline Text with gradient background effect")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.white)
                .padding(.horizontal, 32)
                .padding(.vertical)
                .background(gradient())
                .cornerRadius(12)
            
            Text("This is gradient foreground effct")
                .font(.system(size: 20, weight: .bold))
                .foreground(gradient())
                .padding(.horizontal, 32)
                .padding(.vertical)
                .cornerRadius(12)
            
           Text("Fancy Stroke")
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(Color.blue)
                .cornerRadius(40)
                .foregroundColor(.white)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.blue, lineWidth: 5))
            
            (Text("Attribured ").fontWeight(.bold) +
            Text("property ").underline() +
            Text("of ").foregroundColor(Color.red) +
            Text("text").foregroundColor(Color.purple).italic()).frame(height: 40)
                
        }.navigationBarTitle("Texts")
    }
}

struct TextsView_Previews: PreviewProvider {
    static var previews: some View {
        TextsView()
    }
}
