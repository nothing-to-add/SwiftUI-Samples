//
//  File name: CardView.swift
//  Project name: Email Validation
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 05/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct CardView: View {
    @State private var email: String = ""
    @State private var valid: Bool = false
    let bb: (String) -> () -> Bool
    
    var body: some View {
        VStack() {
            Spacer()
            Text("First").frame(maxWidth: .infinity, alignment: .leading)
            TextField("1st ph", text: $email)
                .customField()
                .onChange(of: email) { value in
                    valid = bb(value)()
                }
            Spacer()
            Text(valid ? "Valid" : "Invalid")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.system(size: 36, design: .default))
                .bold()
                .foregroundColor(valid ? .green : .red)
            Spacer()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(bb: String.self.isValidSimple)
    }
}
