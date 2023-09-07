//
//  File name: SplashRow.swift
//  Project name: Init Screen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 06/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct SplashRowView: View {
    let data: SplashModel
    
    var body: some View {
        Label {
            Text(data.name)
                .padding()
        } icon: {
            data.image
                .resizable()
                .frame(width: 64, height: 64)
        }
    }
}

struct SplashRowView_Previews: PreviewProvider {
    static var previews: some View {
        SplashRowView(data: SplashFakeData().basic)
    }
}
