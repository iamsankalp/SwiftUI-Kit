//
//  GroupView.swift
//  SwiftUI Kit
//
//  Created by Jordan Singer on 7/10/20.
//

import SwiftUI

struct GroupView<Content: View>: View {
    var title: String
    let content: () -> Content
    
    var body: some View {
        List {
            content()
        }
        .listStyle(InsetGroupedListStyle())
        .navigationBarTitle(title, displayMode: .inline)
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView(title: "Group", content: { Text("Content") })
    }
}
