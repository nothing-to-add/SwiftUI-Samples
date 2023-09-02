//
//  File name: ContentView.swift
//  Project name: TabView Content
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 02/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct InitialView: View {
    var body: some View {
        NavigationStack {
            GeometryReader { bounds in
                VStack {
                    Text("Click the button to open TabView Screen")
                        .font(.system(size: 36, design: .default))
                        .frame(width: bounds.size.width * 0.8, height: (bounds.size.height/2), alignment: .center)
                        .foregroundColor(.primary)
                        .bold()
                        .multilineTextAlignment(.center)
                    Button(action: {} ) {
                        NavigationLink {
                            DashboardView()
                        } label: {
                            Text("Open")
                        }
                        .controlSize(.large)
                        .buttonStyle(.borderedProminent)
                    }
                    .font(.system(size: 24, design: .default))
                    Spacer()
                }
                .frame(width: bounds.size.width, height: bounds.size.height)
            }
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
