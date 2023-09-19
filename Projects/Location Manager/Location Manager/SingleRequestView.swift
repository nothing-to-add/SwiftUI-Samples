//
//  File name: SingleRequestView.swift
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

struct SingleRequestView: View {
    @StateObject var locationManager = LocationManager()
    @FetchRequest(sortDescriptors: []) var locations: FetchedResults<LocationModel>
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        HStack {
            List(locations.sorted(by: { $0.time ?? Date() > $1.time ?? Date() } )) { location in
                VStack {
                    Text("Time: \(location.time?.formatted(date: .abbreviated, time: .standard) ?? Date().formatted())")
                    Text(location.coordinates ?? "No coordinates")
                }
            }
            
            VStack {
                if let location = locationManager.location {
                    Text("Your location: \(location.latitude), \(location.longitude)")
                        .onAppear() {
                            addRecord(location: location)
                        }
                        .onChange(of: location) { newValue in
                            addRecord(location: newValue)
                        }
                }
                
                LocationButton {
                    locationManager.requestLocation()
                }
                .frame(height: 44)
                .padding()
                Text("Need to wait 10 s to get data")
                Button("Clear History", action: deleteRecords)
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    .disabled(locations.isEmpty)
            }
        }
    }
    
    private func addRecord(location: CLLocationCoordinate2D) {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = .medium
//        dateFormatter.timeStyle = .medium
        
        let loc = LocationModel(context: moc)
        loc.id = UUID()
        loc.coordinates = "la: \(location.latitude) lo: \(location.longitude)"
//        loc.time = dateFormatter.string(from: Date())
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

struct SingleRequestView_Previews: PreviewProvider {
    static var previews: some View {
        SingleRequestView()
    }
}
