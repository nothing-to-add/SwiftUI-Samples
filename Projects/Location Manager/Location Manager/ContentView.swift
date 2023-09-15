//
//  File name: ContentView.swift
//  Project name: Location Manager
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 13/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import SwiftUI
import CoreLocationUI
import CoreLocation

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    @FetchRequest(sortDescriptors: []) var locations: FetchedResults<LocationModel>
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        HStack {
            List(locations) { location in
                VStack {
                    Text("Time: \(location.time ?? "No time")")
                    Text(location.coordinates ?? "No coordinates")
                }
            }
            .background(Rectangle().fill(.blue))
            
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
                    print("Button pressed")
                    locationManager.requestLocation()
                }
                .frame(height: 44)
                .padding()
            }
        }
    }
    
    private func addRecord(location: CLLocationCoordinate2D) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short
        
        let loc = LocationModel(context: moc)
        loc.id = UUID()
        loc.coordinates = "la: \(location.latitude) lo: \(location.longitude)"
        loc.time = dateFormatter.string(from: Date())
        try? moc.save()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
