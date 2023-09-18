//
//  File name: FixedPermanentRequestView.swift
//  Project name: Location Manager
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 18/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI
import CoreLocationUI
import CoreLocation
import CoreData

struct FixedPermanentRequestView: View {
    @StateObject var locationManager = LocationManager()
    @FetchRequest(sortDescriptors: []) var locations: FetchedResults<FixedPermModel>
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        VStack {
            Text("Fixed Permanent Request View")
            HStack {
                Button("Start location", action: locationManager.startLocationService)
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    .disabled(locationManager.isUpdatingLocation)
                Button("Stop location", action: locationManager.stopLocationService)
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    .disabled(!locationManager.isUpdatingLocation)
                Button("Clear History", action: deleteRecords)
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    .disabled(locations.isEmpty)
            }
            if let location = locationManager.location {
                Text("Your location: \(location.latitude), \(location.longitude)")
                    .onChange(of: location) { newValue in
                        saveRecord(location: newValue)
                    }
            }
            
            List(locations.sorted(by: { $0.time ?? Date() > $1.time ?? Date() } )) { location in
                VStack {
                    Text("Time: \(location.time?.formatted(date: .abbreviated, time: .standard) ?? Date().formatted())")
                    Text(location.coordinates ?? "No coordinates")
                }
            }
            
            Spacer()
        }
    }
    
    private func saveRecord(location: CLLocationCoordinate2D) {
        let loc = FixedPermModel(context: moc)
        loc.id = UUID()
        loc.coordinates = "la: \(location.latitude) lo: \(location.longitude)"
        loc.time = Date()
        try? moc.save()
    }
    
    private func deleteRecords() {
        locations.forEach {
            moc.delete($0)
        }
        try? moc.save()
    }
}

struct FixedPermanentRequestView_Previews: PreviewProvider {
    static var previews: some View {
        FixedPermanentRequestView()
    }
}

