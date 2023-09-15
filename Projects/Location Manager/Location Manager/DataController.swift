//
//  File name: DataController.swift
//  Project name: Location Manager
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 15/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import CoreData

class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "LocationData")
    
    init() {
        container.loadPersistentStores {description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
