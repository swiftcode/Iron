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
            VStack {
                CategoryView(image: Image(systemName: "house"), name: "mpc")
                    .tint(.blue)
                    .frame(alignment: .leading)
                CategoryView(image: Image(systemName: "folder"), name: "Desktop")
                    .tint(.blue)
                    .frame(alignment: .leading)
                CategoryView(image: Image(systemName: "folder"), name: "Documents")
                    .tint(.blue)
                    .frame(alignment: .leading)
                CategoryView(image: Image(systemName: "folder"), name: "Downloads")
                    .tint(.blue)
                    .frame(alignment: .leading)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
