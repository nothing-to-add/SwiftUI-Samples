//
//  File name: NewsListView.swift
//  Project name: TabView Content
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 02/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct NewsListView: View {
    private let data: [NewsModel]
    
    init(data: [NewsModel] = NewsFakeData().data) {
        self.data = data
    }
    
    private let layout = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                LazyVGrid(columns: layout, spacing: .none) {
                    
                    ForEach(data, id: \.self) { item in
                        NewsView(data: item)
                    }
                }
            }
            .navigationTitle(C.NewsText().titleTxt)
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}
