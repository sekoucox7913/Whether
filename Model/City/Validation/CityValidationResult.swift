//
//  CityValidationResult.swift
//  Weather
//
//  Created by Sekou on 21/06/2019.

import SwiftUI

extension CityValidation {
    
    struct Result: Codable {
        
        var cityData: CityData
        
        enum CodingKeys: String, CodingKey {
            
            case cityData = "result"
            
        }
        
    }
    
    struct CityData: Codable {
        
        var name: String
        var geometry: Geometry
        
        struct Geometry: Codable {
            
            var location: Location
            
            struct Location: Codable {
                
                var longitude: Double
                var latitude: Double
                
                enum CodingKeys: String, CodingKey {
                    
                    case longitude = "lng"
                    case latitude = "lat"
                    
                }
                
            }
            
        }
        
    }
    
}
