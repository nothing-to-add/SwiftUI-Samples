//
//  File name: ListView.swift
//  Project name: Init Screen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 05/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct ListView: View {
    private let data = SplashFakeData().data
    private let title = "List of Splash screens"
    
    var body: some View {
        NavigationStack {
            List(data) { screen in
                
                    NavigationLink(destination: SplashScreenView(data: screen)) {
                        SplashRowView(data: screen)
                    }
                }
                .navigationBarTitle(title)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
