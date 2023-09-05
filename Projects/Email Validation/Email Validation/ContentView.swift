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
    private let data = CardFakeData().data
    private let validations = [
        String.self.isValidSimple,
        String.self.isValidComplex,
        String.self.isValidData
    ]
    
    var body: some View {
        GeometryReader { bounds in
            VStack {
                ForEach(Array(data.enumerated()), id: \.offset) { (index, item) in
                    CardView(validation: validations[index], data: item)
                }
                .frame(height: bounds.size.height/CGFloat(data.count))
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
