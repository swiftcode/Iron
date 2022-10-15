//
//  SideView.swift
//  Iron
//
//  Created by mpc on 10/1/22.
//

import SwiftUI

struct SideView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                FavoritesView()
                    .padding(0)
                LocationsView()
                    .padding(0)
                TagView()
            }
            .frame(width: geometry.size.width * 0.45, height: geometry.size.height, alignment: .top)
            .foregroundColor(.gray)
        }
    }
}

struct SideView_Previews: PreviewProvider {
    static var previews: some View {
        SideView()
    }
}
