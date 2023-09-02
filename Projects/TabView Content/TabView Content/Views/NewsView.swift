//
//  File name: NewsView.swift
//  Project name: TabView Content
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 02/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct NewsView: View {
    private let data: NewsModel
    private let textColor = Color(UIColor.darkGray)
    
    init(data: NewsModel = NewsModel(image: "tab_img1", text: C().noneText)) {
        self.data = data
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image("\(data.image)").resizable()
                .aspectRatio(UIImage(named: "\(data.image)")!.size, contentMode: .fit)
            Text("**\(data.text)**")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(textColor)
                .font(.system(size: 20, design: .default))
        }
        .padding()
        .background(Rectangle()
            .stroke(lineWidth: 1.0)
            .foregroundColor(.gray)
        )
        .navigationBarBackButtonHidden(true)
        .padding(.leading)
        .padding(.trailing)
    }
    
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
