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
    let geo: GeometryProxy
    
    var body: some View {
        Label {
            Text(data.name)
                .font(.title)
                .padding()
                .frame(width: geo.size.width/3, alignment: .center)
                .multilineTextAlignment(.center)
        } icon: {
            data.image
                .resizable()
                .aspectRatio(4/6, contentMode: .fit)
                .frame(height: geo.size.height/4, alignment: .leading)
            //.frame(maxWidth: geo.size.width/4)
        }
        .labelStyle(.titleAndIcon)
    }
}

struct SplashRowView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            SplashRowView(data: SplashFakeData().basic, geo: proxy)
        }
    }
}
