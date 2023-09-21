//
//  File name: PermanentRequestView.swift
//  Project name: Location Manager
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 22/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI
import CoreLocation
import CoreData

struct PermanentRequestView<T: LocationEntity>: View {
    @ObservedObject var locationManager = LocationManager()
    @FetchRequest(sortDescriptors: []) var locations: FetchedResults<T>
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        let cont = LocationDataController<T>()
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
                Button("Clear History", action: {
                    cont.deleteRecords(locations, context: moc)
                } )
                .controlSize(.large)
                .buttonStyle(.borderedProminent)
                .disabled(locations.isEmpty)
            }
            
            if let location = locationManager.location {
                Text("Your location: \(location.latitude), \(location.longitude)")
                    .onChange(of: location) { newValue in
                        cont.saveRecord(context: moc, location: newValue)
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
}

struct PermanentRequestView_Previews: PreviewProvider {
    static var previews: some View {
        PermanentRequestView()
    }
}
