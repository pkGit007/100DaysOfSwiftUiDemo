//
//  ListView.swift
//  100DaysOfSwiftUIDemo
//
//  Created by Khasnobis, Pritha on 19/07/20.
//

import SwiftUI

struct ListItem {
    
    var title: String
    var subTitle: String
    
    init(title: String, subTitle: String, image: String) {
        self.title = title
        self.subTitle = subTitle
    }
}

struct ListView: View {
    
    var items = [ListItem(title: "Name", subTitle: "Jack Ryan", image: "info"),
    ListItem(title: "Contact", subTitle: "9876543210", image: "phone"),
    ListItem(title: "Asset", subTitle: "PDF", image: "doc")]
    
    var body: some View {
        List(items, id: \.title) { item in
            
            ZStack {
                NavigationLink(destination: DetailView()) {
                   EmptyView()
                }
                ListItemCell(item: item)
            }
        }.buttonStyle(PlainButtonStyle())
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
