//
//  File name: DasboardView.swift
//  Project name: TabView Content
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 02/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct DashboardView: View {
    @State private var defaultTab = "account"
    
    var body: some View {
        TabView(selection: $defaultTab) {
            NewsListView()
                .tabItem{
                    Label("News", systemImage: "newspaper")
                }
                .tag("login")
            
            AccountView()
                .tabItem{
                    Label("Account", systemImage: "shared.with.you")
                }
                .tag("account")
            
            ScanQRView()
                .tabItem{
                    Label("Scan QR", systemImage: "qrcode.viewfinder")
                }
                .tag("scan_qr")
            
            TicketsListView()
                .tabItem{
                    Label("Tickets", systemImage: "list.bullet.rectangle.portrait")
                }
                .tag("tickets")
            
            LogoutView()
                .tabItem{
                    Label("Logout", systemImage: "rectangle.portrait.and.arrow.forward")
                }
                .tag("logout")
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

