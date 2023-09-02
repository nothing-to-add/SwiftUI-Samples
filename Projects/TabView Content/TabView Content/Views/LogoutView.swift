//
//  File name: LogoutView.swift
//  Project name: TabView Content
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 02/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct LogoutView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        GeometryReader { bounds in
            VStack {
                Text(C.LogoutText().mainTxt)
                    .font(.system(size: 36, design: .default))
                    .frame(width: bounds.size.width * 0.8, height: (bounds.size.height/2), alignment: .center)
                    .foregroundColor(.primary)
                    .bold()
                    .multilineTextAlignment(.center)
                Button(C.LogoutText().btnTxt) {
                    dismiss()
                }
                .controlSize(.large)
                .buttonStyle(.borderedProminent)
                .font(.system(size: 24, design: .default))
            }
            .frame(width: bounds.size.width, height: bounds.size.height)
        }
    }
}

struct LogoutView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutView()
    }
}
