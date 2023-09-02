//
//  File name: AccountView.swift
//  Project name: TabView Content
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 02/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        GeometryReader { bounds in
            VStack {
                Text("Account")
                    .font(.system(size: 36, design: .default))
                    .frame(width: bounds.size.width * 0.8, height: (bounds.size.height/2), alignment: .center)
                    .foregroundColor(.primary)
                    .bold()
                    .multilineTextAlignment(.center)
            }
            .frame(width: bounds.size.width, height: bounds.size.height)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
