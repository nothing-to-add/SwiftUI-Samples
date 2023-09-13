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
        VStack {
            Image(systemName: "airtag")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, Location Manager!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
