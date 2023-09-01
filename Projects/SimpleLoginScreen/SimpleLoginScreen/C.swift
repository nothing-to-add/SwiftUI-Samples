//
//  File name: Constants.swift
//  Project name: SimpleLoginScreen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 01/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import Foundation

struct C {
    let emptyText = ""
    
    struct LoginViewText {
        let nameTxt = "Username"
        let namePh = "Enter your username"
        let codeTxt = "Security Code"
        let codePh = "Enter your security code"
        let passTxt = "Password"
        let passPh = "Enter your password"
        let repPassTxt = "Repeat Password"
        let repPassPh = "Repeat your password"
        let loginBtnTxt = "Login"
    }
    
    struct Images {
        let loginBkg = "ios_bg_6"
        let mainAppBkg = "ios_bg_7"
    }
    
    struct MainAppText {
        let welcomeTxt = "Hello"
        let validTxt = "You are successfully \nlogged in"
    }
}
