//
//  LocationsView.swift
//  Iron
//
//  Created by mpc on 9/30/22.
//

import SwiftUI

struct LocationsView: View {
    var body: some View {
        VStack {
            CategoryView(image: Image(systemName: "macmini"), name: "Mac Mini")
                .tint(.blue)
                .frame(alignment: .leading)
            CategoryView(image: Image(systemName: "iphone"), name: "mpc")
                .tint(.blue)
                .frame(alignment: .leading)
            Spacer()
        }
        .padding(0)
        .background(Color(red: 211/255, green: 208/255, blue: 208/255))
        .foregroundColor(.black)
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
    }
}
