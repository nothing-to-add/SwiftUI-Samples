//
//  File name: TimerSplashView.swift
//  Project name: Init Screen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 06/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct TimerSplashView: View {
    @Environment(\.dismiss) private var dismiss
    @State var isActive: Bool = false
    
    var body: some View {
        VStack {
            if !self.isActive {
                Image("TimerSplash")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
            } else {
                NavigationLink {} label: {}
                .onAppear {
                    dismiss()
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
        
    }
}
