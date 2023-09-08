//
//  File name: OpacitySplashView.swift
//  Project name: Init Screen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 08/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct OpacitySplashView: View {
    @State private var textOpacity: Double = 0
    
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
                        .opacity(textOpacity)
                    
                    Text("Nothing-to-add")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .opacity(textOpacity)
                        .frame(width: geo.size.width, height: geo.size.height/2, alignment: .center)
                }
            }
            .onAppear {
                withAnimation(.easeInOut(duration: 1.5).delay(0.5)) {
                    textOpacity = 1.0
                }
            }
        }
    }
}

struct OpacitySplashView_Previews: PreviewProvider {
    static var previews: some View {
        OpacitySplashView()
    }
}
