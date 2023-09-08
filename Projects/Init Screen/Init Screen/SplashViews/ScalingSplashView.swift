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
    @State private var logoScale: CGFloat = 0.01
    
    var body: some View {
        ZStack {
            Color(UIColor.lightGray)
                .opacity(0.3)
                .ignoresSafeArea()
            GeometryReader { geo in
                VStack {
                    Image(systemName: "figure.mind.and.body")
                        .font(.system(size: 100 * logoScale))
                        .shadow(color: .gray, radius: 10, x: 0, y: 5)
                        .scaleEffect(logoScale)
                        .frame(height: geo.size.height * 0.5 * 0.65 * logoScale)
                    
                    Text("Nothing-to-add")
                        .font(.system(size: 36, design: .default))
                        .multilineTextAlignment(.center)
                        .bold()
                        .frame(width: geo.size.width, height: geo.size.height/2, alignment: .center)
                }
            }
            .onAppear {
                withAnimation(.easeInOut(duration: 1.5)) {
                    logoScale = 1.5
                }
            }
        }
    }
}

struct ScalingSplashView_Previews: PreviewProvider {
    static var previews: some View {
        ScalingSplashView()
    }
}
