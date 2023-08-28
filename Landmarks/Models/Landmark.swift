//
//  Landmark.swift
//  Landmarks
//
//  Created by Mariola Hullings on 8/24/23.
//

import Foundation
import SwiftUI
import CoreLocation

//Adding Codable conformance makes it easier to move data between the structure and a data file
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    //Add an imageName property to read the name of the image from the data, and a computed image property that loads an image from the asset catalog.
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
