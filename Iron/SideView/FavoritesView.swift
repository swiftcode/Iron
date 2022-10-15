//
//  FavoritesView.swift
//  Iron
//
//  Created by mpc on 9/25/22.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        GeometryReader { geometry in
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
            .padding(0)
            .frame(width: geometry.size.width * 0.75, height: geometry.size.height, alignment: .top)
            .background(Color(red: 211/255, green: 208/255, blue: 208/255))
            .foregroundColor(.black)
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        Text("")
    }
}
