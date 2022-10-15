//
//  ContentView.swift
//  Iron
//
//  Created by mpc on 9/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            HStack {
                SideView()
                FileView()
            }
            .frame(minWidth: 300, idealWidth: 300, maxWidth: 300, maxHeight: .infinity)
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
