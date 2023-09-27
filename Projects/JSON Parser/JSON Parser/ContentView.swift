//
//  File name: ContentView.swift
//  Project name: JSON Parser
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 27/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct ContentView: View {
    let players = PlayerData().getData()
    
    var body: some View {
        NavigationStack {
            List(players, id: \.self) { player in
                NavigationLink(player.nick, value: player)
            }
            .navigationDestination(for: PlayerModel.self, destination: PlayerView.init)
            .navigationTitle("Select a player")
        }
    }
}

#Preview {
    ContentView()
}
