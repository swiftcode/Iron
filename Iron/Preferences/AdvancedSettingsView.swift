//
//  AdvancedSettingsView.swift
//  Iron
//
//  Created by mpc on 11/15/22.
//

import SwiftUI

struct AdvancedSettingsView: View {
    @AppStorage("hardDisks") private var showHardDisks = true
    @AppStorage("externalDisks") private var showExternalDisks = true
    @AppStorage("devices") private var showDevices = true
    @AppStorage("connectedServers") private var showConnectedServers = true

    var body: some View {
        Form {
            Text("Show these items on the desktop")
            Toggle("Hard disks", isOn: $showHardDisks)
            Toggle("External disks", isOn: $showExternalDisks)
            Toggle("CDs, DVDs, and iPods", isOn: $showDevices)
            Toggle("Connected servers", isOn: $showConnectedServers)
        }
        .padding(20)
        .frame(width: 350, height: 100)
    }
}

struct AdvancedSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedSettingsView()
    }
}
