//
//  File name: MainAppView.swift
//  Project name: SimpleLoginScreen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 01/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct MainAppView: View {
    
    @State private var name: String
    @State private var isActive = false
    
    init(name: String = "Anonymous") {
        self.name = name
    }
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Image(C.Images().mainAppBkg)
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("\(C.MainAppText().welcomeTxt) \(name)")
                        .font(.system(size: 36, design: .default))
                        .frame(height: (UIScreen.main.bounds.height/2), alignment: .top)
                        .foregroundColor(.brown)
                        .bold()
                    Text(C.MainAppText().validTxt)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.brown)
                        .underline()
                        .bold()
                }
                .padding()
            }
        }
    }
}

struct MainAppView_Previews: PreviewProvider {
    static var previews: some View {
        MainAppView()
    }
}
