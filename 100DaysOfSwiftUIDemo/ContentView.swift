//
//  ContentView.swift
//  100DaysOfSwiftUI
//
//  Created by Khasnobis, Pritha on 04/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                NavigationLink(destination: TextsView()) {
                    Text("Texts")
                }
                NavigationLink(destination: ImagesView()) {
                    Text("Images")
                }
            }.navigationBarTitle("List", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
