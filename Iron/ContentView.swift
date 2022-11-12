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
                .background(Color(red: 211/255, green: 208/255, blue: 208/255))

                List() {
                    Text("Content")
                    Text("Content")
                    Text("Content")
                    Text("Content")
                }
            }
            .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity, alignment: .topLeading)
            .toolbar(content: {

                                ToolbarItem(placement: .automatic) {
                                    Button(action: {

                                    }) {
                                        Image(systemName: "lessthan")
                                            .imageScale(.large)
                                    }
                                }

                                ToolbarItem(placement: .automatic) {
                                    Button(action: {

                                    }) {
                                        Image(systemName: "greaterthan")
                                            .imageScale(.large)
                                    }
                                    .padding(EdgeInsets(top: 0, leading: -15.0, bottom: 0, trailing: 0))
                                }

                                ToolbarItem(placement: .automatic) {
                                    Button(action: {

                                    }) {
                                        Image(systemName: "list.bullet")
                                            .imageScale(.large)
                                    }
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                                }

                                ToolbarItem(placement: .automatic) {
                                    Button(action: {

                                    }) {
                                        Image(systemName: "square.grid.3x1.below.line.grid.1x2")
                                            .imageScale(.large)
                                    }
                                }

                                ToolbarItem(placement: .automatic) {
                                    Button(action: {

                                    }) {
                                        Image(systemName: "square.and.arrow.up")
                                            .imageScale(.large)
                                    }
                                }

                                ToolbarItem(placement: .automatic) {
                                    Button(action: {

                                    }) {
                                        Image(systemName: "tag")
                                            .imageScale(.large)
                                    }
                                }

                                ToolbarItem(placement: .automatic) {
                                    Button(action: {

                                    }) {
                                        Image(systemName: "ellipsis.circle")
                                            .imageScale(.large)
                                    }
                                }

                                ToolbarItem(placement: .automatic) {
                                    Button(action: {

                                    }) {
                                        Image(systemName: "magnifyingglass")
                                            .imageScale(.large)
                                    }
                                }
                            })
        }
    }
}

struct GridDemo: View {
    let columns = [
        GridItem(.fixed(50)),
        GridItem(.fixed(50))
    ]


    var body: some View {
        LazyHGrid(rows: columns) {
            Tag(image: Image(systemName: "circle.fill"), name: "Red", color: .red)
            Tag(image: Image(systemName: "circle.fill"), name: "Orange", color: .orange)
            Tag(image: Image(systemName: "circle.fill"), name: "Yellow", color: .yellow)
            Tag(image: Image(systemName: "circle.fill"), name: "Green", color: .green)
            Tag(image: Image(systemName: "circle.fill"), name: "Blue", color: .blue)
            Tag(image: Image(systemName: "circle.fill"), name: "Purple", color: .purple)
            Tag(image: Image(systemName: "circle.fill"), name: "Grey", color: .gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
