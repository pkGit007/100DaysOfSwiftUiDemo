//
//  ListItemCell.swift
//  100DaysOfSwiftUIDemo
//
//  Created by Khasnobis, Pritha on 19/07/20.
//

import SwiftUI

struct ListItemCell: View {
    
    var item: ListItem
    
    var body: some View {
        
        HStack {
            Image("Flower")
                .resizable()
                .frame(width: 100, height: 100)
            VStack(alignment: .leading) {
                Text(item.title).font(.headline)
                Text(item.subTitle).font(.subheadline)
            }
            Spacer()
            Button(action: {
                print("Clicked")
            },
               label: {
                Text("Click")
                    .foregroundColor(.blue)
                    .padding()
                    .border(Color.gray)
            })
        }.navigationBarTitle("List")
        
    }
}

