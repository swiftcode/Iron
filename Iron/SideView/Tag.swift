//
//  Tag.swift
//  Iron
//
//  Created by mpc on 10/1/22.
//

import SwiftUI

struct Tag: View {
    let image: Image?
    let name: String
    let color: Color

    var body: some View {
        HStack {
            if let image = image {
                image
                    .foregroundColor(color)
                    .padding(.leading, 10)
                Text(name)
                Spacer()
            }
        }
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        TagView()
    }
}
