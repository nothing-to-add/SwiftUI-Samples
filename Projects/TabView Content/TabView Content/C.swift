//
//  File name: C.swift
//  Project name: TabView Content
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 02/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import Foundation

struct C {
    let blankText = ""
    
    struct LogoutText {
        let mainTxt = "Are you sure you want to log out?"
        let btnTxt = "Logout"
    }
    
    struct ScanQRText {
        let mainTxt = "Scan a boarding pass to begin"
        let btnTxt = "Scan Pass"
        let errorTxt = "Scanning failed: "
        let image = "tabview_ticket"
        
        let fakeMainTxt = "Congratulations"
        let fakeAddTxt = "Ticket is scanned"
        let fakeBtnTxt = "Cancel"
    }
}
