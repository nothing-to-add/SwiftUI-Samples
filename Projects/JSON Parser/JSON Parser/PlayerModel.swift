//
//  File name: PlayerModel.swift
//  Project name: JSON Parser
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 27/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import Foundation

struct PlayerModel: Codable, Hashable {
    let nick, firstName, lastName, age, currentTeam, country: String
}

struct PlayerData {
    
    func getData() -> [PlayerModel] {
        var jsonData = Data()
        do {
            if let path = Bundle.main.path(forResource: "PlayersResource", ofType: "json"),
               let data = try String(contentsOfFile: path).data(using: .utf8)
            {
                jsonData = data
            }
            
        } catch {
            
            print(error)
        }
        
        return try! JSONDecoder().decode([PlayerModel].self, from: jsonData)
    }
    
}
