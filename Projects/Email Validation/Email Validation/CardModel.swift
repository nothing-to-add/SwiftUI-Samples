//
//  File name: CardModel.swift
//  Project name: Email Validation
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 05/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import Foundation

struct CardModel {
    var id = UUID()
    let label, placeholder: String
}

struct CardFakeData {
    let data = [
    CardModel(label: "Validation using simple regex", placeholder: "example: .@..com"),
    CardModel(label: "Validation using regex RFC 5322", placeholder: "example: aaa@aaa.com"),
    CardModel(label: "Validation based on app data", placeholder: "example: data@data.com")
    ]
}
