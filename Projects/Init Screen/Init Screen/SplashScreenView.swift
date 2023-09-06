//
//  File name: SplashScreenView.swift
//  Project name: Init Screen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 06/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct SplashScreenView: View {
    @Environment(\.dismiss) private var dismiss
    var content: AnyView
    
    //DismissAction was introduced in iOS 15. For the older versions, we need to use PresentationMode.
    //    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        content
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                        
                        //Option 2 for earlier than iOS 15
                        //presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.backward")
                    }
                }
            }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView(content: AnyView(BasicSplashView()))
    }
}
