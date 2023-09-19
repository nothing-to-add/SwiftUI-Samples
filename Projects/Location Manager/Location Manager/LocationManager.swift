//
//  File name: LocationManager.swift
//  Project name: Location Manager
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 13/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import CoreLocation
import SwiftUI

class LocationManager: NSObject, ObservableObject {
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var authorisationStatus: CLAuthorizationStatus = .notDetermined
    @Published var isUpdatingLocation: Bool = false
    
    override init() {
        super.init()
        manager.delegate = self
        manager.requestAlwaysAuthorization()
        manager.allowsBackgroundLocationUpdates = true
        manager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func requestLocation() {
        manager.requestLocation()
    }
    
    func startLocationService() {
        manager.startUpdatingLocation()
        isUpdatingLocation = true
    }
    
    func stopLocationService() {
        manager.stopUpdatingLocation()
        isUpdatingLocation = false
    }
}
    
extension LocationManager: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status != .authorizedAlways {
            self.manager.requestAlwaysAuthorization()
        }
        authorisationStatus = status
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        if let clErr = error as? CLError {
            switch clErr.code {
            case CLError.locationUnknown:
                print("location unknown")
            case CLError.denied:
                print("denied.")
            default:
                print("other Core Location error")
            }
        } else {
            print("other error:", error.localizedDescription)
        }
    }
}

extension CLLocationCoordinate2D: Equatable {
    static public func == (lhs: CLLocationCoordinate2D, rhs: CLLocationCoordinate2D) -> Bool {
        return lhs.latitude == rhs.latitude && lhs.longitude == lhs.longitude
    }
}

