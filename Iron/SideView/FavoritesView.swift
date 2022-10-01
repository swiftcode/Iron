//
//  FavoritesView.swift
//  Iron
//
//  Created by mpc on 9/25/22.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Favorites")
                .font(.title3)

            HStack {
                Image(systemName: "house")
                Text("mpc")
            }
            .padding(3.0)

            HStack {
                Image(systemName: "folder")
                Text("Desktop")
            }
            .padding(3.0)

            HStack {
                Image(systemName: "folder")
                Text("Downloads")
            }
            .padding(3.0)

            HStack {
                Image(systemName: "folder")
                Text("Documents")
            }
            .padding(3.0)

            HStack {
                Image(systemName: "dot.radiowaves.left.and.right")
                Text("Airdrop")
            }
            .padding(3.0)
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
