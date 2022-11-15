//
//  ActionToolbar.swift
//  Iron
//
//  Created by mpc on 11/12/22.
//

import SwiftUI

struct ActionToolbar: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .automatic) {
            Menu(
                content: {
                    Button(action: {}) {
                        Label("Brand New Folder", systemImage: "")
                    }
                },
                label: {
                    Label("", systemImage: "ellipsis.circle")
                }
            )
        }        
    }
}
