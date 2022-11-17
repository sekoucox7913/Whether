//
//  CityCompletionResult.swift
//  Weather
//
//  Created by Sekou on 21/06/2019.

import SwiftUI

extension CityCompletion {
    
    struct Result: Codable {
        
        var predictions: [Prediction]
        
        enum CodingKeys: String, CodingKey {
            
            case predictions = "predictions"
            
        }
        
    }
    
    struct Prediction: Codable, Identifiable {
        
        var id: String
        var description: String
        
        enum CodingKeys: String, CodingKey {
            
            case id = "place_id"
            case description = "description"
            
        }
        
    }
    
}
