//
//  File name: SplashModel.swift
//  Project name: Init Screen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 06/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import Foundation

struct SplashModel: Identifiable {
    let id = UUID()
    let name, image: String
}

struct SplashFakeData {
    let data = [
    SplashModel(name: "Name 1", image: "star"),
    SplashModel(name: "Name 2", image: "book"),
    SplashModel(name: "Name 3", image: "pencil"),
    ]
}
