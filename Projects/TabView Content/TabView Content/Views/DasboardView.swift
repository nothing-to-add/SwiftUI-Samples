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
    @State private var defaultTab = DashboardTag.news
    private let text = C.DashboardText()
    
    var body: some View {
        TabView(selection: $defaultTab) {
            NewsListView()
                .tabItem{
                    Label(text.label1Txt, systemImage: text.label1Img)
                }
                .tag(DashboardTag.news)
            
            AccountView()
                .tabItem{
                    Label(text.label2Txt, systemImage: text.label2Img)
                }
                .tag(DashboardTag.account)
            
            ScanQRView()
                .tabItem{
                    Label(text.label3Txt, systemImage: text.label3Img)
                }
                .tag(DashboardTag.scan_qr)
            
            TicketsListView()
                .tabItem{
                    Label(text.label4Txt, systemImage: text.label4Img)
                }
                .tag(DashboardTag.tickets)
            
            LogoutView()
                .tabItem{
                    Label(text.label5Txt, systemImage: text.label5Img)
                }
                .tag(DashboardTag.logout)
        }
        .navigationBarBackButtonHidden(true)
    }
}

enum DashboardTag {
    case news
    case account
    case scan_qr
    case tickets
    case logout
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

