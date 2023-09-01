//
//  File name: LoginDataValiadation.swift
//  Project name: SimpleLoginScreen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 01/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import Foundation

struct LoginDataValidation: Equatable {
    var name: String = C().emptyText
    var code: Int?
    var pass: String = C().emptyText
    var repeatPass: String = C().emptyText
    
    var isValid: Bool {
        nameIsvalid() && codeIsValid() && passIsValid() && repeatPassIsValid()
    }
    
    private func nameIsvalid() -> Bool {
        !name.isEmpty
    }
    
    private func codeIsValid() -> Bool {
        if let value = code {
            return value % 3 == 0 ? true : false
        }
        return false
    }
    
    private func passIsValid() -> Bool {
        pass.count > 5
    }
    
    private func repeatPassIsValid() -> Bool {
        pass == repeatPass
    }
}
