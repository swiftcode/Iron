//
//  ImageLabel.swift
//  Iron
//
//  Created by mpc on 11/17/22.
//

import SwiftUI

struct ImageLabel: View {
    let img: String
    let label: String

    var body: some View {
        HStack {
            Image(systemName: img)
//                .resizable()
//                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 1))
            Text("\(label)")
        }
    }

    init(img: String, label: String) {
        self.img = img
        self.label = label
    }
}

struct ToggleLabel_Previews: PreviewProvider {
    static var previews: some View {
        //ToggleLabel()
        Text("ToggleLabel_Previews")
    }
}
