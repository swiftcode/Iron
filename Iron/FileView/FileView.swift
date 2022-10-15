//
//  FileView.swift
//  Iron
//
//  Created by mpc on 10/1/22.
//

import SwiftUI

struct FileView: View {
    private var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: threeColumnGrid) {
            
            }
        }
    }
}

struct FileView_Previews: PreviewProvider {
    static var previews: some View {
        FileView()
    }
}
