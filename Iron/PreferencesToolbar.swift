//
//  PreferencesToolbar.swift
//  Iron
//
//  Created by mpc on 11/13/22.
//

import SwiftUI

struct PreferencesToolbar: View {
    private enum Tabs: Hashable {
        case general, tag, sidebar, advanced
    }
    
    var body: some View {
        TabView {
            GeneralSettingsView()
                .tabItem {
                    Label("General", systemImage: "gear")
                }
                .tag(Tabs.general)

            TagSettingsView()
                .tabItem {
                    Label("Tags", systemImage: "tag")
                }
                .tag(Tabs.tag)

            SidebarSettingsView()
                .tabItem {
                    Label("Sidebar", systemImage: "sidebar.leading")
                }
                .tag(Tabs.sidebar)

            AdvancedSettingsView()
                .tabItem {
                    Label("Advanced", systemImage: "gearshape.2")
                }
                .tag(Tabs.advanced)
        }
        .padding(20)
        .frame(width: 375, height: 150)
    }
}
