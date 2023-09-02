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
    
    let data: [TicketModel] = [TicketModel(company: "Lufthansa", date: "18/03/2023", departure: "BERLIN TEGEL", arrival: "LONDON CITY", awardMiles: "+ 5,000 M", executiveBonus: "+2,500 M", statusMiles: "+5,000", executiveStatusBonus: "+1,500", flightId: "LH455", seatClass: "Business Class", seat: "D"),
    TicketModel(company: "Lufthansa", date: "17/03/2023", departure: "LONDON CITY", arrival: "BERLIN TEGEL", awardMiles: "+ 5,000 M", executiveBonus: "+1,500 M", statusMiles: "+5,000", executiveStatusBonus: "+1,500", flightId: "LH454", seatClass: "Business Class", seat: "C"),
    TicketModel(company: "Lufthansa", date: "10/03/2023", departure: "SAN FRANCISCO", arrival: "BERLIN BRANDENBURG", awardMiles: "+ 15,000 M", executiveBonus: "+2,500 M", statusMiles: "+15,000", executiveStatusBonus: "+2,500", flightId: "LH451", seatClass: "Business Class", seat: "A"),
    TicketModel(company: "Lufthansa", date: "03/03/2023", departure: "BERLIN BRANDENBURG", arrival: "SAN FRANCISCO", awardMiles: "+ 15,000 M", executiveBonus: "+2,500 M", statusMiles: "+15,000", executiveStatusBonus: "+2,500", flightId: "LH450", seatClass: "Business Class", seat: "B"),
    TicketModel(company: "Lufthansa", date: "14/02/2023", departure: "MUNICH INT", arrival: "FRANKFURT MAIN", awardMiles: "+ 4,000 M", executiveBonus: "+0,500 M", statusMiles: "+4,000", executiveStatusBonus: "+0,500", flightId: "LH352", seatClass: "Business Class", seat: "E"),
    TicketModel(company: "Lufthansa", date: "12/02/2023", departure: "FRANKFURT MAIN", arrival: "MUNICH INT", awardMiles: "+ 4,000 M", executiveBonus: "+0,500 M", statusMiles: "+4,000", executiveStatusBonus: "+0,500", flightId: "LH350", seatClass: "Business Class", seat: "F"),
    TicketModel(company: "Lufthansa", date: "10/02/2023", departure: "LONDON STANSTED", arrival: "MUNICH INT", awardMiles: "+ 5,000 M", executiveBonus: "+1,500 M", statusMiles: "+5,000", executiveStatusBonus: "+1,500", flightId: "LH344", seatClass: "Business Class", seat: "C"),
    TicketModel(company: "Lufthansa", date: "07/02/2023", departure: "MUNICH INT", arrival: "MLONDON STANSTED", awardMiles: "+ 5,000 M", executiveBonus: "+1,500 M", statusMiles: "+5,000", executiveStatusBonus: "+1,500", flightId: "LH341", seatClass: "Business Class", seat: "E")]
    
}
