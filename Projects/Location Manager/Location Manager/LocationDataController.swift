//
//  File name: LocationDataController.swift
//  Project name: Location Manager
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 20/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI
import CoreLocationUI
import CoreLocation
import CoreData

struct LocationDataController<T: LocationEntity> {
    @StateObject var locationManager = LocationManager()
    @FetchRequest(sortDescriptors: []) var locations: FetchedResults<T>
    @Environment(\.managedObjectContext) var moc
    
    func saveRecord(location: CLLocationCoordinate2D) {
        let loc = T(context: moc)
        loc.id = UUID()
        loc.coordinates = "la: \(location.latitude) lo: \(location.longitude)"
        loc.time = Date()
        try? moc.save()
    }
    
    func deleteRecords() {
        locations.forEach {
            moc.delete($0)
        }
        try? moc.save()
    }
}
