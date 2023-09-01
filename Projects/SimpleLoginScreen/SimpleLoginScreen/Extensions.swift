//
//  File name: Extensions.swift
//  Project name: SimpleLoginScreen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 01/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

public extension TextField {
    func customField() -> some View {
        self.textFieldStyle(.roundedBorder)
            .autocorrectionDisabled(true)
            .textInputAutocapitalization(.never)
    }
}
