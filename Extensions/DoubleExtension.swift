//
//  DoubleExtension.swift
//  Weather
//
//  Created by Sekou on 13/06/2019.

import Foundation

extension Double {
    
    var formattedTemperature: String {
        let formatter = NumberFormatter()
        formatter.allowsFloats = false
        
        let formattedDouble = formatter.string(from: NSNumber(value: self)) ?? "-"
        return formattedDouble + "ºC"
    }
    
}
