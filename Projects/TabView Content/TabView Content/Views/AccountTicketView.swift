//
//  File name: AccountTicketView.swift
//  Project name: TabView Content
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 03/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct AccountTicketView: View {
    private let data: TicketModel
    private let textColor = Color(UIColor.darkGray)
    
    init(data: TicketModel = TicketModel(company: C().noneText, date: C().noneText, departure: C().noneText, arrival: C().noneText, awardMiles: C().noneText, executiveBonus: C().noneText, statusMiles: C().noneText, executiveStatusBonus: C().noneText, flightId: C().noneText, seatClass: C().noneText, seat: C().noneText)) {
        self.data = data
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Label("**\(data.company)**", systemImage: "airplane.circle")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(textColor)
                        .font(.system(size: 12, design: .default))
                    
                    Label("\(data.date)", systemImage: "calendar")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .foregroundColor(textColor)
                        .font(.system(size: 12, design: .default))
                    
                }
                HStack {
                    Image(systemName: "airplane.departure")
                        .foregroundColor(textColor)
                    Text("\(data.departure) - \(data.arrival)")
                        .foregroundColor(textColor)
                        .font(.system(size: 12, design: .default))
                    Image(systemName: "airplane.arrival")
                        .foregroundColor(textColor)
                }
                
                Divider().overlay(.gray)
                
                VStack {
                    HStack {
                        Text("Award Miles")
                            .foregroundColor(textColor)
                            .font(.system(size: 12, design: .default))
                        Spacer()
                        Text("**\(data.awardMiles)**")
                            .foregroundColor(textColor)
                            .font(.system(size: 12, design: .default))
                    }
                    
                    HStack {
                        Text("Executive Bonus")
                            .foregroundColor(textColor)
                            .font(.system(size: 10, design: .default))
                        Spacer()
                        Text("\(data.executiveBonus)")
                            .foregroundColor(textColor)
                            .font(.system(size: 10, design: .default))
                    }
                }
                
                Divider().overlay(.thinMaterial)
                
                VStack(spacing: 0) {
                    HStack {
                        Text("Status Miles")
                            .foregroundColor(textColor)
                            .font(.system(size: 12, design: .default))
                        Spacer()
                        Text("**\(data.statusMiles)**   ")
                            .foregroundColor(textColor)
                            .font(.system(size: 12, design: .default))
                    }
                    
                    HStack {
                        Text("Executive Bonus")
                            .foregroundColor(textColor)
                            .font(.system(size: 10, design: .default))
                        Spacer()
                        Text("\(data.executiveStatusBonus)   ")
                            .foregroundColor(textColor)
                            .font(.system(size: 10, design: .default))
                    }
                }
                
                Divider().overlay(.gray)
                
                HStack {
                    Spacer()
                    Text("\(data.flightId)")
                        .foregroundColor(textColor)
                        .font(.system(size: 12, design: .default))
                    Spacer()
                    Divider().frame(alignment: .center).overlay(.gray)
                    Spacer()
                    Text("\(data.seatClass), \(data.seat)")
                        .foregroundColor(textColor)
                        .font(.system(size: 12, design: .default))
                    Spacer()
                }
            }
            .padding()
            .background(Rectangle()
                .stroke(lineWidth: 1.0)
                .foregroundColor(.gray)
            )
        }
        .navigationBarBackButtonHidden(true)
        .padding(.leading)
        .padding(.trailing)
    }
    
}

struct AccountTicketView_Previews: PreviewProvider {
    static var previews: some View {
        AccountTicketView()
    }
}


