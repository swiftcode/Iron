//
//  MainToolbar.swift
//  Iron
//
//  Created by mpc on 11/12/22.
//

import SwiftUI

struct MainToolbar: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .automatic) {
            Button(action: {

            }) {
                Image(systemName: "lessthan")
                    .imageScale(.large)
            }
        }

        ToolbarItem(placement: .automatic) {
            Button(action: {

            }) {
                Image(systemName: "greaterthan")
                    .imageScale(.large)
            }
            .padding(EdgeInsets(top: 0, leading: -15.0, bottom: 0, trailing: 0))
        }

        ToolbarItem(placement: .automatic) {
            Button(action: {

            }) {
                Image(systemName: "list.bullet")
                    .imageScale(.large)
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
        }

        ToolbarItem(placement: .automatic) {
            Button(action: {

            }) {
                Image(systemName: "square.grid.3x1.below.line.grid.1x2")
                    .imageScale(.large)
            }
        }

        ToolbarItem(placement: .automatic) {
            Button(action: {

            }) {
                Image(systemName: "square.and.arrow.up")
                    .imageScale(.large)
            }
        }

        ToolbarItem(placement: .automatic) {
            Button(action: {

            }) {
                Image(systemName: "tag")
                    .imageScale(.large)
            }
        }

        ToolbarItem(placement: .automatic) {
            Button(action: {

            }) {
                Image(systemName: "ellipsis.circle")
                    .imageScale(.large)
            }
        }

        ToolbarItem(placement: .automatic) {
            Button(action: {

            }) {
                Image(systemName: "magnifyingglass")
                    .imageScale(.large)
            }
        }
    }
}
