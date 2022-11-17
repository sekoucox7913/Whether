//
//  HourlyWeather.swift
//  Weather
//
//  Created by Sekou on 12/06/2019.

import SwiftUI

struct HourlyWeather: Codable, Identifiable {
    
    var id: Date {
        return time
    }
    
    var time: Date
    var temperature: Double
    var icon: Weather.Icon
    
}
