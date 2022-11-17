//
//  CityCompletion.swift
//  Weather
//
//  Created by Sekou on 13/06/2019.

import SwiftUI
import Combine

class CityCompletion: NSObject, ObservableObject {
    
    private var completionManager: CityCompletionManager
        
    @Published var predictions: [CityCompletion.Prediction] = []
    
    override init() {
        predictions = []
        completionManager = CityCompletionManager()
        super.init()
    }
    
    func search(_ search: String) {
        completionManager.getCompletion(for: search) { (predictions) in
            DispatchQueue.main.async {
                self.predictions = predictions
            }
        }
    }
    
}
