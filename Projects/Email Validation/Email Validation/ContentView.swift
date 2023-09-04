//
//  File name: ContentView.swift
//  Project name: Email Validation
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 04/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct ContentView: View {
    @State private var email1: String = ""
    @State private var email2: String = ""
    @State private var email3: String = ""
    
    var body: some View {
        GeometryReader { bounds in
            VStack {
                VStack() {
                    Spacer()
                    Text("First").frame(maxWidth: .infinity, alignment: .leading)
                    TextField("1st ph", text: $email1)
                        .customField()
                    Spacer()
                    Text(email1.isValidSimple() ? "Valid" : "Invalid")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 36, design: .default))
                        .bold()
                        .foregroundColor(email1.isValidSimple() ? .green : .red)
                    Spacer()
                }
                .frame(height: bounds.size.height/3)
                
                VStack(alignment: .leading) {
                    Spacer()
                    Text("Second")
                    TextField("2nd PH", text: $email2)
                        .customField()
                    Spacer()
                    Text(email2.isValidComplex() ? "Valid" : "Invalid")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 36, design: .default))
                        .bold()
                        .foregroundColor(email2.isValidComplex() ? .green : .red)
                    Spacer()
                }
                .frame(height: bounds.size.height/3)
                
                VStack(alignment: .leading) {
                    Spacer()
                    Text("Third")
                    TextField("3rd PH", text: $email3)
                        .customField()
                    Spacer()
                    Text(email3.isValidData() ? "Valid" : "Invalid")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.system(size: 36, design: .default))
                        .bold()
                        .foregroundColor(email3.isValidData() ? .green : .red)
                    Spacer()
                }
                .frame(height: bounds.size.height/3)
            }
            .padding()
            
        }
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
