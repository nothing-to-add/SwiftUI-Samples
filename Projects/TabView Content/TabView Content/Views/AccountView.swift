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
    private let data: [TicketModel]
    private let textColor = Color(UIColor.darkGray)
    private let lightTextColor = Color.white
    
    init(data: [TicketModel] = TicketFakeData().data) {
        self.data = data
    }
    
    private let layout = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                ZStack {
                    Rectangle()
                        .fill(textColor)
                        .cornerRadius(25, corners: [.topLeft, .topRight])
                    VStack {
                        HStack {
                            Text("Frequent Traveller")
                                .foregroundColor(lightTextColor)
                                .font(.system(size: 12, design: .default))
                            Image(systemName: "star.fill")
                                .foregroundColor(lightTextColor)
                                .font(.system(size: 10, design: .default))
                            Image(systemName: "star.fill")
                                .foregroundColor(lightTextColor)
                                .font(.system(size: 10, design: .default))
                            Image(systemName: "chevron.down")
                                .foregroundColor(lightTextColor)
                                .font(.system(size: 10, design: .default))
                            Spacer()
                            Image(systemName: "airplane")
                                .foregroundColor(lightTextColor)
                                .font(.system(size: 10, design: .default))
                            Text("Lufthansa")
                                .foregroundColor(lightTextColor)
                                .font(.system(size: 12, design: .default))
                        }
                        .padding()
                        
                        HStack {
                            ZStack {
                                Circle().stroke(lineWidth: 1)
                                    .foregroundColor(Color(UIColor.lightGray))
                                Circle()
                                    .trim(from: 0.75, to: 1.2)
                                    .stroke(lineWidth: 2)
                                    .foregroundColor(lightTextColor)
                                VStack{
                                    Text("25%")
                                        .foregroundColor(lightTextColor)
                                        .font(.system(size: 35, design: .default))
                                    Text("San Francisco")
                                        .foregroundColor(lightTextColor)
                                        .font(.system(size: 12, design: .default))
                                }
                            }
                            .padding()
                            
                            VStack(alignment: .trailing, spacing: 5) {
                                Text("38,000 M")
                                    .foregroundColor(lightTextColor)
                                    .font(.system(size: 30, design: .default))
                                Divider().overlay(.thinMaterial)
                                Text("Award Miles")
                                    .foregroundColor(lightTextColor)
                                    .font(.system(size: 14, design: .default))
                            }
                            .padding()
                        }
                        
                        VStack(spacing: 10) {
                            
                            VStack(spacing: 5) {
                                HStack {
                                    Text("Status Miles")
                                        .foregroundColor(lightTextColor)
                                        .font(.system(size: 14, design: .default))
                                    Spacer()
                                    Text("32,000")
                                        .foregroundColor(lightTextColor)
                                        .font(.system(size: 14, design: .default))
                                }
                                Divider().overlay(.thinMaterial)
                            }
                            
                            VStack(spacing: 5) {
                                HStack {
                                    Text("Select Miles")
                                        .foregroundColor(lightTextColor)
                                        .font(.system(size: 14, design: .default))
                                    Spacer()
                                    Text("15,000")
                                        .foregroundColor(lightTextColor)
                                        .font(.system(size: 14, design: .default))
                                }
                                Divider().overlay(.thinMaterial)
                            }
                            
                            VStack(spacing: 5) {
                                HStack {
                                    Text("Flight Segments")
                                        .foregroundColor(lightTextColor)
                                        .font(.system(size: 14, design: .default))
                                    Spacer()
                                    Text("15")
                                        .foregroundColor(lightTextColor)
                                        .font(.system(size: 14, design: .default))
                                }
                                Divider().overlay(.thinMaterial)
                            }
                            
                            VStack(spacing: 5) {
                                HStack {
                                    Text("eVoucher")
                                        .foregroundColor(lightTextColor)
                                        .font(.system(size: 14, design: .default))
                                    Spacer()
                                    Text("4")
                                        .foregroundColor(lightTextColor)
                                        .font(.system(size: 14, design: .default))
                                }
                            }
                            
                            
                        }
                        .padding(.leading)
                        .padding(.trailing)
                    }
                    
                    
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.top)
                .edgesIgnoringSafeArea(.top)
                
                VStack {
                    HStack {
                        Text("Activities")
                            .foregroundColor(textColor)
                            .font(.system(size: 20, design: .default))
                        Spacer()
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(textColor)
                            .font(.system(size: 20, design: .default))
                    }
                    .padding()
                    
                    ScrollView(.vertical, showsIndicators: true) {
                        LazyVGrid(columns: layout, spacing: .none) {
                            
                            ForEach(data, id: \.self) { item in
                                AccountTicketView(data: item)
                            }
                        }
                    }
                }
                .background(Rectangle()
                    .stroke(lineWidth: 1)
                    .foregroundColor(.gray))
                .padding(.leading)
                .padding(.trailing)
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
