//
//  TagSettingsView.swift
//  Iron
//
//  Created by mpc on 11/15/22.
//

import SwiftUI

//struct TagColor: Identifiable {
//    var id : Int
//    var color: String
//
//    let sampleColors = [
//        {
//            "id: 1",
//            "color": "red"
//        },
//        {
//            "id: 2",
//            "color": "blue"
//        }
//    ]
//}

struct TagSettingsView: View {


    //let tagDesc: TagColor = TagColor.sampleColors
    
    var body: some View {
        List {
        }
        .listStyle(.inset(alternatesRowBackgrounds: true))
    }
}

struct TagSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        TagSettingsView()
    }
}
