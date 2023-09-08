//
//  File name: RotationSplashView.swift
//  Project name: Init Screen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 08/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct RotationSplashView: View {
    @State private var rotationAngle: Angle = .degrees(0)
    
    var body: some View {
        ZStack {
            Color(UIColor.lightGray)
                .opacity(0.3)
                .ignoresSafeArea()
            GeometryReader { geo in
                VStack {
                    Image(systemName: "figure.mind.and.body")
                        .font(.system(size: 100))
                        .shadow(color: .gray, radius: 10, x: 0, y: 5)
                        .frame(height: geo.size.height/2)
                        .rotationEffect(rotationAngle)
                    
                    Text("Nothing-to-add")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .frame(width: geo.size.width, height: geo.size.height/2, alignment: .center)
                }
            }
            .onAppear {
                withAnimation(.interpolatingSpring(mass: 4.0, stiffness: 100.0, damping: 10.0)) {
                    rotationAngle = .degrees(360)
                }
            }
        }
    }
}

struct RotationSplashView_Previews: PreviewProvider {
    static var previews: some View {
        RotationSplashView()
    }
}
