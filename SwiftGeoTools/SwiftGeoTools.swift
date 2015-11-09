//
//  SwiftGeoTools.swift
//  SwiftGeoTools
//
//  A Swift implementation of Jan Philip Matuschek's geo algorithms (from http://janmatuschek.de/LatitudeLongitudeBoundingCoordinates )
//  Inspired by PyGeoTools (https://github.com/jfein/PyGeoTools/blob/master/geolocation.py )
//  This Swift implementation by Dylan McKee

import Foundation

// First, need to define a way to convert from Radians to Degrees, since Swift has no built in method...
extension Double {
    // Extension method from https://stackoverflow.com/questions/29179692/how-can-i-convert-from-degrees-to-radians
    var degreesToRadians: CGFloat {
        return CGFloat(self) * CGFloat(M_PI) / 180.0
    }
}

class Geolocation {
    /* Class representing a coordinate on a sphere, most likely Earth.
    
    This class is based from the code smaple in this paper:
    http://janmatuschek.de/LatitudeLongitudeBoundingCoordinates
    
    The owner of that website, Jan Philip Matuschek, is the full owner of
    his intellectual property. This class is simply a Python port of his very
    useful Java code. All code written by Jan Philip Matuschek and ported by me
    (which is all of this class) is owned by Jan Philip Matuschek.
    */
    
    private let EARTH_RADIUS = 6378.1 // Km.
    private let MIN_LAT = -90.0.degreesToRadians
    private let MAX_LAT = 90.0.degreesToRadians
    private let MIN_LON = -180.0.degreesToRadians
    private let MAX_LON = 180.0.degreesToRadians
    
    private var latitude: Double
    private var longitude: Double
    
    init (latitudeDegrees: Double, longitudeDegrees: Double) {
        latitude = latitudeDegrees
        longitude = longitudeDegrees
        
        
        
    }
    
}