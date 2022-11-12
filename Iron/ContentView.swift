//
//  ContentView.swift
//  Iron
//
//  Created by mpc on 9/19/22.
//

import SwiftUI

struct ContentView: View {
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
                .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity, alignment: .topLeading)
                .background(Color("lightGrey"))

                List() {
                    Text("Content")
                    Text("Content")
                    Text("Content")
                    Text("Content")
                }
                .listStyle(.inset(alternatesRowBackgrounds: true))
            }
            .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity, alignment: .topLeading)
            .toolbar(content: {
                MainToolbar()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
