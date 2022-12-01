//
//  ImageView.swift
//  Iron
//
//  Created by mpc on 11/20/22.
//

import SwiftUI

struct ImageView: View {
    let imageName: String
    var body: some View {

        let img = Image(systemName: imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
        return img
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        //ImageView()
        Text("ImageView_Previews")
    }
}
