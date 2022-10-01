//
//  LocationsView.swift
//  Iron
//
//  Created by mpc on 9/30/22.
//

import SwiftUI

struct LocationsView: View {
    var body: some View {
        NavigationView {
            VStack {
                CategoryView(image: Image(systemName: "macmini"), name: "Mac Mini")
                    .tint(.blue)
                    .frame(alignment: .leading)
                CategoryView(image: Image(systemName: "iphone"), name: "mpc")
                    .tint(.blue)
                    .frame(alignment: .leading)
                Spacer()
            }
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
    }
}
