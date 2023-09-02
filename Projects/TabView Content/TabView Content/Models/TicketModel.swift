//
//  File name: TicketModel.swift
//  Project name: TabView Content
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 02/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import Foundation

struct TicketModel: Decodable, Hashable {
    let company, date, departure, arrival, awardMiles, executiveBonus, statusMiles, executiveStatusBonus, flightId, seatClass, seat: String
    var id = UUID()
}

struct TicketFakeData {
    
    let data: [TicketModel] = [
        TicketModel(company: "Lufthansa", date: "18/03/2023", departure: "BERLIN TEGEL", arrival: "LONDON CITY", awardMiles: "+ 5,000 M", executiveBonus: "+2,500 M", statusMiles: "+5,000", executiveStatusBonus: "+1,500", flightId: "LH355", seatClass: "Business Class", seat: "D"),
        TicketModel(company: "AIRFRANCE", date: "17/03/2023", departure: "LONDON CITY", arrival: "BERLIN TEGEL", awardMiles: "+ 5,000 M", executiveBonus: "+1,500 M", statusMiles: "+5,000", executiveStatusBonus: "+1,500", flightId: "LH354", seatClass: "Business Class", seat: "C"),
        TicketModel(company: "SWISS", date: "10/03/2023", departure: "SAN FRANCISCO", arrival: "BERLIN BRANDENBURG", awardMiles: "+ 15,000 M", executiveBonus: "+2,500 M", statusMiles: "+15,000", executiveStatusBonus: "+2,500", flightId: "LH351", seatClass: "Business Class", seat: "A"),
        TicketModel(company: "RYANAIR", date: "03/03/2023", departure: "BERLIN BRANDENBURG", arrival: "SAN FRANCISCO", awardMiles: "+ 15,000 M", executiveBonus: "+2,500 M", statusMiles: "+15,000", executiveStatusBonus: "+2,500", flightId: "LH350", seatClass: "Business Class", seat: "B"),
        TicketModel(company: "Jetsar", date: "14/02/2023", departure: "MUNICH INT", arrival: "FRANKFURT MAIN", awardMiles: "+ 4,000 M", executiveBonus: "+0,500 M", statusMiles: "+4,000", executiveStatusBonus: "+0,500", flightId: "LH252", seatClass: "Business Class", seat: "E"),
        TicketModel(company: "easyJet", date: "12/02/2023", departure: "FRANKFURT MAIN", arrival: "MUNICH INT", awardMiles: "+ 4,000 M", executiveBonus: "+0,500 M", statusMiles: "+4,000", executiveStatusBonus: "+0,500", flightId: "LH250", seatClass: "Business Class", seat: "F"),
        TicketModel(company: "WIZZ", date: "10/02/2023", departure: "LONDON STANSTED", arrival: "MUNICH INT", awardMiles: "+ 5,000 M", executiveBonus: "+1,500 M", statusMiles: "+5,000", executiveStatusBonus: "+1,500", flightId: "LH244", seatClass: "Business Class", seat: "C"),
        TicketModel(company: "Austrian", date: "07/02/2023", departure: "MUNICH INT", arrival: "MLONDON STANSTED", awardMiles: "+ 5,000 M", executiveBonus: "+1,500 M", statusMiles: "+5,000", executiveStatusBonus: "+1,500", flightId: "LH241", seatClass: "Business Class", seat: "E")
    ]
    
}
