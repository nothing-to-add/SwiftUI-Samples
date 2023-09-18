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
import CoreLocationUI
import CoreLocation

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    @FetchRequest(sortDescriptors: []) var locations: FetchedResults<LocationModel>
    @Environment(\.managedObjectContext) var moc
    
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
