//
//  airbnb.swift
//  Airbnb-Clone-A
//
//  Created by MAC43 on 1/12/23.
//

import Foundation
import MapKit

struct Airbnb: Codable {
    let places: [Place]
}

struct Location: Codable {
    let country: String
    let city: String
}

struct Place: Codable {
    let name: String
    let rating: Double
    let location: Location
    let image_url: String
    let date: String
    let price: Double
}

struct PlaceCoordinate: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
