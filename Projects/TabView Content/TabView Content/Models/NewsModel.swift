//
//  File name: NewsModel.swift
//  Project name: TabView Content
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 02/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import Foundation

struct NewsModel: Decodable, Hashable {
    let image, text : String
    var id = UUID()
}

struct NewsFakeData {
    
    let data: [NewsModel] = [ NewsModel(image: "tab_img1", text: "UK bans Lufthansa’s ‘green’ adverts for misleading consumers"),
                              NewsModel(image: "tab_img2", text: "UK bans Lufthansa’s ‘green’ adverts for misleading consumers"),
                              NewsModel(image: "tab_img3", text: "‘Greenwashing’: Lufthansa defends Green Fares as campaigners slam offsetting plans"),
                              NewsModel(image: "tab_img4", text: "AirTags, smart bags and lithium batteries: Airlines’ electronic rules explained"),
                              NewsModel(image: "tab_img5", text: "Lufthansa strike: Two-day walkout averted as pilots reach last-minute pay deal"),
                              NewsModel(image: "tab_img6", text: "Winter travel warning: All the airlines cancelling flights between now and March 2023"),
                              NewsModel(image: "tab_img7", text: "Lufthansa strikes: Wage hikes of up to 19% agreed following negotiations"),
                              NewsModel(image: "tab_img8", text: "Lufthansa sends surprising letter of apology to customers following flight cancellations")
    ]
    
}
