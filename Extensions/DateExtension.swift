//
//  DateExtension.swift
//  Weather
//
//  Created by Sekou on 13/06/2019.

import Foundation

extension Date {
    
    var formattedHour: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        
        return dateFormatter.string(from: self)
    }
    
    var formattedDay: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        return dateFormatter.string(from: self)
    }
    
}
