//
//  CityHeaderView.swift
//  Weather
//
//  Created by Sekou on 12/06/2019.

import SwiftUI

struct CityHeaderView: View {
    
    @ObservedObject var city: City
    
    var temperature: String {
        guard let temperature = city.weather?.current.temperature else {
            return "-ºC"
        }
        return temperature.formattedTemperature
    }
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            HStack(alignment: .center, spacing: 16) {
                city.weather?.current.icon.image
                    .font(.largeTitle)
                Text(temperature)
                    .font(.largeTitle)
            }
            Spacer()
        }
        .frame(height: 110)
    }
    
}

//#if DEBUG
//struct CityHeader_Previews : PreviewProvider {
//    static var previews: some View {
//        CityHeaderView()
//    }
//}
//#endif
