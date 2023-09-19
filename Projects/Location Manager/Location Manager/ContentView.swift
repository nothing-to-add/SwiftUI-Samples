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
    
    var body: some View {
        TabView {
            SingleRequestView()
                .tabItem {
                    Text("Single request")
                }
            
            FixedPermanentRequestView()
                .tabItem {
                    Text("Fixed Perm")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
