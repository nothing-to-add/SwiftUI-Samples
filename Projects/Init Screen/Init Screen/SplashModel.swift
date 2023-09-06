//
//  File name: SplashModel.swift
//  Project name: Init Screen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 06/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct SplashModel: Identifiable {
    let id = UUID()
    let name, image: String
    let view: AnyView
}

struct SplashFakeData {
    let data = [
    SplashModel(name: "Name 1", image: "star", view: AnyView(BasicSplashView())),
    SplashModel(name: "Name 2", image: "book", view: AnyView(BasicSplashView())),
    SplashModel(name: "Name 3", image: "pencil", view: AnyView(BasicSplashView())),
    SplashModel(name: "Timer Splash", image: "clock", view: AnyView(TimerSplashView())),
    ]
    
    let basic = SplashModel(name: "Name 1", image: "star", view: AnyView(BasicSplashView()))
}
