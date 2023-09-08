//
//  File name: ScalingSplashView.swift
//  Project name: Init Screen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 08/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct ScalingSplashView: View {
    var body: some View {
        ZStack {
            Color(UIColor.lightGray)
                .opacity(0.3)
                .ignoresSafeArea()
            
            VStack {
                Text("Welcome to our App")
                    .font(.system(size: 36, design: .default))
                    .multilineTextAlignment(.center)
                    .bold()
            }
        }
    }
}

//struct ScalingSplashView_Previews: PreviewProvider {
//    static var previews: some View {
//        ScalingSplashView()
//    }
//}
