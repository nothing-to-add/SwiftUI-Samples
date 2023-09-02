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
//    private let data = DashboardTicketData().getData()
//    private let newsdata = DashboardNewsData().getData()
    
    var body: some View {
        TabView(selection: $defaultTab) {
            Text("News")
//            NewsListView(data: newsdata)
                .tabItem{
                    Label("News", systemImage: "newspaper")
                }
                .tag("login")
            
            Text("Account")
//            AccountView(data: data)
                .tabItem{
                    Label("Account", systemImage: "shared.with.you")
                }
                .tag("account")
            
            Text("RQ Code")
//            ScanQRView()
                .tabItem{
                    Label("Scan QR", systemImage: "qrcode.viewfinder")
                }
                .tag("scan_qr")
            
            Text("Tickets")
//            TicketListView(data: data)
                .tabItem{
                    Label("Tickets", systemImage: "list.bullet.rectangle.portrait")
                }
                .tag("tickets")
            
            Text("Logout")
//            LogoutView()
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

