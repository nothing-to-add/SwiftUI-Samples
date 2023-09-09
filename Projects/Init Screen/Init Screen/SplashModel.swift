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
    let name: String
    let image: Image
    let view: AnyView
}

struct SplashFakeData {
    let data = [
        SplashModel(name: "Timer Splash", image: Image("TimerSplash"), view: AnyView(TimerSplashView())),
        SplashModel(name: "Login Splash", image: Image("LoginSplash"), view: AnyView(LoginSplashView())),
        SplashModel(name: "Scaling Splash", image: Image("ScalingSplash"), view: AnyView(ScalingSplashView())),
        SplashModel(name: "Opacity Splash", image: Image("OpacitySplash"), view: AnyView(OpacitySplashView())),
        SplashModel(name: "Rotation Splash", image: Image("RotationSplash"), view: AnyView(RotationSplashView())),
        SplashModel(name: "Moving Path Splash", image: Image("PathSplash"), view: AnyView(PathSplashView())),
    ]
    
    let basic = SplashModel(name: "Name 1", image: Image(systemName: "star"), view: AnyView(BasicSplashView()))
}
