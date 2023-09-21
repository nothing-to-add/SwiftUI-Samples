//
//  File name: ContentView.swift
//  Project name: Location Manager
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 13/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct ContentView: View {
    @State private var defaultTab = "fixed"
    
    var body: some View {
        TabView(selection: $defaultTab) {
            SingleRequestView()
                .tabItem {
                    Text("Single request")
                }
                .tag("single")
            
            PermanentRequestView<FixedPermModel>()
                .tabItem {
                    Text("Fixed Perm")
                }
                .tag("fixed")
            
            PermanentRequestView<LowPermModel>()
                .tabItem {
                    Text("Default Perm")
                }
                .tag("default")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
