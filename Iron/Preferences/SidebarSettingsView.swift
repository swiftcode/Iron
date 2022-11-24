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


    var body: some View {
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
        }
        .frame(width: 350, height: 500)
    }
}

struct SidebarSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarSettingsView()
    }
}
