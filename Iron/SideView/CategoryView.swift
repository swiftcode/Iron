//
//  CategoryView.swift
//  Iron
//
//  Created by mpc on 9/25/22.
//

import SwiftUI

struct CategoryView: View {
    let image: Image?
    let name: String

    var body: some View {
        HStack {
            if let image = image {
                image
                    .foregroundColor(.blue)
                    .padding(.leading, 10)
                Text(name)
                    .frame(alignment: .trailing)
                Spacer()
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        Text("placeholder")
    }
}
