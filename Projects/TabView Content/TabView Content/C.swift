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
    let noneText = "None"
    
    struct InitText {
        let mainTxt = "Click the button to open TabView Screen"
        let btnTxt = "Open"
    }
    
    struct DashboardText {
        let label1Txt = "News"
        let label2Txt = "Account"
        let label3Txt = "Scan QR"
        let label4Txt = "Tickets"
        let label5Txt = "Logout"
        
        let label1Img = "newspaper"
        let label2Img = "shared.with.you"
        let label3Img = "qrcode.viewfinder"
        let label4Img = "list.bullet.rectangle.portrait"
        let label5Img = "rectangle.portrait.and.arrow.forward"
    }
    
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
    
    struct TicketsList {
        let titleTxt = "List of tickets"
    }
    
    struct NewsText {
        let titleTxt = "News"
    }
}
