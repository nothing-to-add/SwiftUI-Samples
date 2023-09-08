//
//  File name: LoginSplashView.swift
//  Project name: Init Screen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 06/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct LoginSplashView: View {
    @Environment(\.dismiss) private var dismiss
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            Color(UIColor.lightGray)
                .opacity(0.3)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Welcome to our App")
                    .font(.system(size: 36, design: .default))
                    .multilineTextAlignment(.center)
                    .bold()
                Spacer()
                if self.isActive {
                    Button("Login") {
                        dismiss()
                    }
                    .font(.system(size: 36, design: .default))
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    Spacer()
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
}

//struct LoginSplashView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginSplashView()
//    }
//}

