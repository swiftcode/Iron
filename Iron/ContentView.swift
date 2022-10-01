//
//  ContentView.swift
//  Iron
//
//  Created by mpc on 9/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        FavoritesView()
        LocationsView()
        TagView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
