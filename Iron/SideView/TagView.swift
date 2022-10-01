//
//  TagView.swift
//  Iron
//
//  Created by mpc on 10/1/22.
//

import SwiftUI

struct TagView: View {
    var body: some View {
        VStack {
            Tag(image: Image(systemName: "circle.fill"), name: "Red", color: .red)
            Tag(image: Image(systemName: "circle.fill"), name: "Orange", color: .orange)
            Tag(image: Image(systemName: "circle.fill"), name: "Yellow", color: .yellow)
            Tag(image: Image(systemName: "circle.fill"), name: "Green", color: .green)
            Tag(image: Image(systemName: "circle.fill"), name: "Blue", color: .blue)
            Tag(image: Image(systemName: "circle.fill"), name: "Purple", color: .purple)
            Tag(image: Image(systemName: "circle.fill"), name: "Grey", color: .gray)
            Spacer()
        }
        .padding(0)
        .background(Color(red: 211/255, green: 208/255, blue: 208/255))
        .foregroundColor(.black)
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView()
    }
}
