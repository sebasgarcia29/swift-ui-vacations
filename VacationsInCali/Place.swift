//
//  Place.swift
//  VacationsInCali
//
//  Created by Sebastian Garcia on 16/10/24.
//

import SwiftData
import SwiftUI
import MapKit


@Model
class Place {
    #Unique<Place>([\.name, \.latitude, \.longitude])
    
    var name: String
    var latitude: Double
    var longitude: Double
    var interested: Bool
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var image: Image {
        Image(name.lowercased().replacingOccurrences(of: " ", with: ""))
    }
    
    
    //Cats of River, Melendez City, Church Ermita
    init(name: String, latitude: Double, longitude: Double, interested: Bool) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.interested = interested
    }
    
    @MainActor
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: Place.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        for place in previewPlaces {
            container.mainContext.insert(place)
        }
        
        return container
    }
    
    static var previewPlaces: [Place]{
        [
            Place(name: "Melendez City", latitude: 3.369730533212354, longitude: -76.50635863088837, interested: false),
            Place(name: "Cats of river", latitude: 3.4513941, longitude: -76.5455967, interested: true),
            Place(name: "Church Ermita", latitude: 3.454011, longitude: 76.5345671, interested: true),
            Place(name: "Landscape Cali", latitude: 3.4508473, longitude: -76.5404666, interested: true),
            Place(name: "Landscape Downtown", latitude: 3.454790, longitude: -76.532031, interested: false),
            Place(name: "River", latitude: 3.348336, longitude: -76.572623, interested: true),
        ]
    }
}
