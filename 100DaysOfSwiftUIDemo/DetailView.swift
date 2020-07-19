//
//  DetailView.swift
//  100DaysOfSwiftUIDemo
//
//  Created by Khasnobis, Pritha on 19/07/20.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        
        VStack {
            Text("Horizontal Scroll")
            ScrollView(Axis.Set.horizontal, showsIndicators: true) {
                HStack {
                    ForEach(1..<101) { index in
                        Text("\(index)")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.gray)
                    }
                }
            }.navigationBarTitle("Detail")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
