//
//  CityStore.swift
//  Weather
//
//  Created by Sekou on 15/06/2019.

import SwiftUI
import Combine

class CityStore: ObservableObject {
        
    @Published var cities: [City] = [City()]
    
}
