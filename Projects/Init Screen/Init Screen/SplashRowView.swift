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
        HStack(alignment: .center) {
            Image(systemName: data.image)
            Spacer()
            Text(data.name)
            Spacer()
        }
    }
}

struct SplashRowView_Previews: PreviewProvider {
    static var previews: some View {
        SplashRowView(data: SplashModel(name: "None", image: "star"))
    }
}
