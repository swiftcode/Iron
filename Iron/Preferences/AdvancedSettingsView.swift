//
//  AdvancedSettingsView.swift
//  Iron
//
//  Created by mpc on 11/15/22.
//

import SwiftUI

struct AdvancedSettingsView: View {
    let pickerValues = ["Search this Mac", "Search the current folder", "Use the previous search scope"]

    @AppStorage(Constants.Settings.showFileExtensions) private var showFileExtensions = true
    @AppStorage(Constants.Settings.showWarningBeforeChangingExtension) private var showWarningBeforeChangingExtension = true
    @AppStorage(Constants.Settings.showWarningBeforeRemovingFromiCloud) private var showWarningBeforeRemovingFromiCloud = true
    @AppStorage(Constants.Settings.showWarningBeforeEmptyingTrash) private var showWarningBeforeEmptyingTrash = true
    @AppStorage(Constants.Settings.removeItemsFromTrash) private var removeItemsFromTrash = true
    @AppStorage(Constants.Settings.keepFoldersOnTopWhenSortingByName) private var keepFoldersOnTopWhenSortingByName = true
    @AppStorage(Constants.Settings.keepFoldersOnTopOnDesktop) private var keepFoldersOnTopOnDesktop = true
    @AppStorage(Constants.Settings.searchLocation) private var searchLocation = "Search this Mac"

    var body: some View {
        Form {
            Toggle("Show all filename extensions", isOn: $showFileExtensions)
            Toggle("Show warning before changing an extension", isOn: $showWarningBeforeChangingExtension)
            Toggle("Show warning before removing from an iCloud Drive", isOn: $showWarningBeforeRemovingFromiCloud)
            Toggle("Show warning before emptying trash", isOn: $showWarningBeforeEmptyingTrash)
            Toggle("Remove items from the Trash after 30 days", isOn: $showWarningBeforeChangingExtension)

            VStack {
                HStack {
                    Text("Keep folders on top:")
                    Spacer()
                }
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))

                HStack {
                    Toggle("In Windows when sorting by name", isOn: $keepFoldersOnTopWhenSortingByName)
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    Spacer()
                }
                
                HStack {
                    Toggle("On desktop", isOn: $keepFoldersOnTopOnDesktop)
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    Spacer()
                }
            }

            VStack {
                Text("When performing a search:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0))
                Picker("", selection: $searchLocation) {
                    ForEach(pickerValues, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .padding(20)
        .frame(width: 350, height: 300)
    }
}

struct AdvancedSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedSettingsView()
    }
}
