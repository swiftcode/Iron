//
//  GeneralSettingsView.swift
//  Iron
//
//  Created by mpc on 11/13/22.
//

import SwiftUI

struct GeneralSettingsView: View {
    @AppStorage("hardDisks") private var showHardDisks = true
    @AppStorage("externalDisks") private var showExternalDisks = true
    @AppStorage("devices") private var showDevices = true
    @AppStorage("connectedServers") private var showConnectedServers = true
    @AppStorage("newWindow") private var newWindow = "mpc"
    @AppStorage("openInTabs") private var openInTabs = true

    let pickerValues = ["mpc", "foo", "nas", "external"]

    var body: some View {
        Form {
            VStack {
                Text("Show these items on the desktop:")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            Toggle("Hard disks", isOn: $showHardDisks)
            Image(systemName: "key")
            Toggle("External disks", isOn: $showExternalDisks)
            Toggle("CDs, DVDs, and iPods", isOn: $showDevices)
            Toggle("Connected servers", isOn: $showConnectedServers)

            VStack {
                Text("\nNew Finder windows show")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(10)
                Picker("", selection: $newWindow) {
                    ForEach(pickerValues, id: \.self) {
                        Text($0)
                    }
                }
            }

            VStack {
                Toggle("Open folders in tabs instead of new windows", isOn: $openInTabs)
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
            }
        }
        .padding(20)
        .frame(width: 350, height: 300)
    }
}

struct GeneralSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralSettingsView()
    }
}
