//
//  File name: PathSplashScreen.swift
//  Project name: Init Screen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 09/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct PathSplashView: View {
//    @State private var showAction = false //option with repeating
    @State private var counter = 0
    @State private var align: Alignment = .topLeading
    @State private var isVisible = false
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    private let path: [Alignment] = [.topTrailing, .bottomLeading, .bottomTrailing, .center]
    
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
                        .opacity(isVisible ? 1 : 0)
                        .frame(width: geo.size.width, height: geo.size.height/2, alignment: align)
                        .onAppear() {
                            withAnimation(.easeInOut(duration: 0.5).delay(0.5)) {
                                isVisible.toggle()
                            }
                        }
                        .onReceive(timer) { _ in
                            if counter == 4 {
                                timer.upstream.connect().cancel()
                            } else {
                                withAnimation(.linear(duration: 1)) {
                                    align = path[counter]
                                }
                            }
                            counter += 1
                        }
                    //Option with repeating
//                        .frame(height: geo.size.height/2, alignment: self.showAction ? .bottom : .top)
//                        .onAppear() {
//                            withAnimation(.linear(duration: 1.5).repeatCount(3)) {
//                                showAction.toggle()
//                            }
//                        }
                    
                    Text("Nothing-to-add")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .frame(width: geo.size.width, height: geo.size.height/2, alignment: .center)
                }
            }
        }
    }
}

struct PathSplashView_Previews: PreviewProvider {
    static var previews: some View {
        PathSplashView()
    }
}
