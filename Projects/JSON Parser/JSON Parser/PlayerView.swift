//
//  File name: PlayerView.swift
//  Project name: JSON Parser
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 27/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct PlayerView: View {
    let player: PlayerModel
    
    var body: some View {
        
        VStack {
            Text("Nick: \(player.nick)")
                .padding()
            Text("Name: \(player.firstName) \(player.lastName)")
                .padding()
            Text("Age: \(player.age)")
                .padding()
            Text("Current Team: \(player.currentTeam)")
                .padding()
            Text("Country: \(player.country)")
                .padding()
        }
    }
    
}

#Preview {
    PlayerView(player: PlayerModel(nick: "nick", firstName: "firstName", lastName: "lastName", age: "age", currentTeam: "team", country: "coutry"))
}
