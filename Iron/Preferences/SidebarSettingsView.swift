//
//  SidebarSettingsView.swift
//  Iron
//
//  Created by mpc on 11/15/22.
//

import SwiftUI

struct SidebarSettingsView: View {
    // Put these in a JSON structure or something similar.
    @AppStorage("recents") private var showRecents = true
    @AppStorage("airDrop") private var showAirdrop = true
    @AppStorage("applications") private var showApplications = true
    @AppStorage("desktop") private var showDesktop = true
    @AppStorage("documents") private var showDocuments = true
    @AppStorage("downloads") private var showDownloads = true
    @AppStorage("movies") private var showMovies = true
    @AppStorage("music") private var showMusic = true
    @AppStorage("pictures") private var showPictures = true
    @AppStorage("mpc") private var showMpc = true
    
    @AppStorage("hardDisks") private var showHardDisks = true
    @AppStorage("externalDisks") private var showExternalDisks = true
    @AppStorage("devices") private var showDevices = true
    @AppStorage("connectedServers") private var showConnectedServers = true

    @AppStorage("iCloud") private var showCloud = true
    @AppStorage("shared") private var showShared = true
    @AppStorage("macmini") private var showMacMini = true
    @AppStorage("cloudStorage") private var showCloudStorage = true
    @AppStorage("bonjour") private var showBonjour = true
    @AppStorage("tags") private var showTags = true
    
    var body: some View {
        VStack {
            Form {
                Text("Show these items on the desktop")
                
                Group {
                    HStack {
                        Toggle("", isOn: $showRecents)
                        ImageLabel(img: "clock", label: "Recents")
                    }
                    
                    HStack {
                        Toggle("", isOn: $showAirdrop)
                        ImageLabel(img: "dot.radiowaves.left.and.right", label: "Airdrop")
                    }
                    
                    HStack {
                        Toggle("", isOn: $showApplications)
                        ImageLabel(img: "app", label: "Applications")
                    }
                    
                    HStack {
                        Toggle("", isOn: $showDesktop)
                        ImageLabel(img: "menubar.dock.rectangle", label: "Desktop")
                    }
                    
                    HStack {
                        Toggle("", isOn: $showDocuments)
                        ImageLabel(img: "doc", label: "Documents")
                    }
                }
                
                Group {
                    HStack {
                        Toggle("", isOn: $showDownloads)
                        ImageLabel(img: "arrow.down.circle", label: "Downloads")
                    }
                    
                    HStack {
                        Toggle("", isOn: $showMovies)
                        ImageLabel(img: "film", label: "Movies")
                    }
                    
                    HStack {
                        Toggle("", isOn: $showMusic)
                        ImageLabel(img: "music.quarternote.3", label: "Music")
                    }
                    
                    HStack {
                        Toggle("", isOn: $showPictures)
                        ImageLabel(img: "camera", label: "Pictures")
                    }
                    
                    HStack {
                        Toggle("", isOn: $showMpc)
                        ImageLabel(img: "house", label: "mpc")
                    }
                }
                
                Group {
                    Text("iCloud")
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 5, trailing: 0))
                    
                    HStack {
                        Toggle("", isOn: $showCloud)
                        ImageLabel(img: "cloud", label: "iCloud Drive")
                    }
                    
                    HStack {
                        Toggle("", isOn: $showShared)
                        ImageLabel(img: "folder.badge.plus", label: "Shared")
                    }
                }
                
                Group {
                    Text("Locations")
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 5, trailing: 0))
                    
                    HStack {
                        Toggle("", isOn: $showMacMini)
                        ImageLabel(img: "cloud", label: "Michael's Mac Mini")
                    }
                    
                    HStack {
                        Toggle("", isOn: $showMpc)
                        ImageLabel(img: "internaldrive", label: "Hard Disks")
                    }
                    
                    HStack {
                        Toggle("", isOn: $showExternalDisks)
                        ImageLabel(img: "externaldrive", label: "External Disks")
                    }
                    
                    HStack {
                        Toggle("", isOn: $showDevices)
                        ImageLabel(img: "opticaldisc", label: "CDs, DVDs, and iOS Devices")
                    }

                    HStack {
                        Toggle("", isOn: $showCloudStorage)
                        ImageLabel(img: "cloud", label: "Cloud Storage")
                    }
                    
                    HStack {
                        Toggle("", isOn: $showBonjour)
                        ImageLabel(img: "bonjour", label: "Bonjour computers")
                    }
                                    
                    HStack {
                        Toggle("", isOn: $showConnectedServers)
                        ImageLabel(img: "server.rack", label: "Connected servers")
                    }
                }
                
                Group {
                    Text("Tags")
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 5, trailing: 0))
                    
                    HStack {
                        Toggle("", isOn: $showTags)
                        ImageLabel(img: "tag", label: "Recent Tags")
                    }
                }
            }
            Spacer()
        }
        .frame(minWidth: 350.0, minHeight: 680)
    }
}

struct SidebarSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarSettingsView()
    }
}
