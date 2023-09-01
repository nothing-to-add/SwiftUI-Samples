//
//  File name: LoginView.swift
//  Project name: SimpleLoginScreen
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 01/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct LoginView: View {
    @State private var data: LoginDataValidation
    
    init(data: LoginDataValidation = LoginDataValidation()) {
        self.data = data
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                Image(C.Images().loginBkg)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    
                    VStack {
                        VStack(alignment: .leading, spacing: .zero) {
                            Text(C.LoginViewText().nameTxt)
                            TextField(C.LoginViewText().namePh, text: $data.name)
                                .customField()
                        }
                        VStack(alignment: .leading, spacing: .zero) {
                            Text(C.LoginViewText().codeTxt)
                            TextField(C.LoginViewText().codePh, value: $data.code, format: .number)
                                .customField()
                        }
                        VStack(alignment: .leading, spacing: .zero) {
                            Text(C.LoginViewText().passTxt)
                            TextField(C.LoginViewText().passPh, text: $data.pass)
                                .customField()
                        }
                        VStack(alignment: .leading, spacing: .zero) {
                            Text(C.LoginViewText().repPassTxt)
                            TextField(C.LoginViewText().repPassPh, text: $data.repeatPass)
                                .customField()
                        }
                    }
                    
                    Spacer()
                    
                    Button(action: {} ) {
                        NavigationLink {
                            MainAppView(name: data.name)
                        } label: {
                            Text(C.LoginViewText().loginBtnTxt)
                            
                        }
                        .controlSize(.large)
                        .buttonStyle(.borderedProminent)
                        
                    }
                    .disabled(!data.isValid)
                    .foregroundColor(!data.isValid ? .gray : .white)
                    .opacity(!data.isValid ? 0.75 : 1)
                    
                    Spacer()
                }
                .padding()
                .navigationBarTitle(C().emptyText)
                .navigationBarHidden(true)
            }
            .onAppear{data = LoginDataValidation()}
            
        }
        
    }
    
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
