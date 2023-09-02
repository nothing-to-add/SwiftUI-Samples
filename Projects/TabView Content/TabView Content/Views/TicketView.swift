//
//  File name: TicketView.swift
//  Project name: TabView Content
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 02/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI

struct TicketView: View {
    private let data: TicketModel
    private let textColor = Color(UIColor.darkGray)
    
    init(data: TicketModel = TicketModel(company: C().noneText, date: C().noneText, departure: C().noneText, arrival: C().noneText, awardMiles: C().noneText, executiveBonus: C().noneText, statusMiles: C().noneText, executiveStatusBonus: C().noneText, flightId: C().noneText, seatClass: C().noneText, seat: C().noneText)) {
        self.data = data
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10) {
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
                        .foregroundColor(Color(UIColor.darkGray))
                    Text("\(data.departure) - \(data.arrival)")
                        .foregroundColor(textColor)
                        .font(.system(size: 12, design: .default))
                    Image(systemName: "airplane.arrival")
                        .foregroundColor(textColor)
                }
                Divider()
                HStack {
                    Spacer()
                    Text("\(data.flightId)")
                        .foregroundColor(textColor)
                        .font(.system(size: 12, design: .default))
                    Spacer()
                    Divider().frame(alignment: .center)
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
                .background(.gray.opacity(0.1))
            )
        }
        .navigationBarBackButtonHidden(true)
        .padding(.leading)
        .padding(.trailing)
    }
    
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}

