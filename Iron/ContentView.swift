//
//  ContentView.swift
//  Iron
//
//  Created by mpc on 9/19/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSidebar = true

    var body: some View {
         HSplitView {
             NavigationView {
                 Section {
                     VStack {
                         Text("Sidebar")
                         Text("Sidebar")
                         Text("Sidebar")
                         Text("Sidebar")
                         Text("Sidebar")
                     }
                 }
                 .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity, alignment: .topLeading)
                 .background(Color("lightGrey"))
                 .onTapGesture {
                     print("tap gesture")
                 }

                List() {
                    Text("Content")
                    Text("Content")
                    Text("Content")
                    Text("Content")
                }
                .onTapGesture {
                    print("tapped")
                }
                .listStyle(.inset(alternatesRowBackgrounds: true))
            }
            .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity, alignment: .topLeading)
            .toolbar(content: {
                MainToolbar(isShowingSidebar: $isShowingSidebar)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
