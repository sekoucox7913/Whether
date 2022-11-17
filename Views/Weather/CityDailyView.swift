//
//  CityDailyView.swift
//  Weather
//
//  Created by Sekou on 13/06/2019.

import SwiftUI

struct CityDailyView : View {
    
    @State var day: DailyWeather
    
    var body: some View {
        ZStack {
            HStack(alignment: .center) {
                Text(day.time.formattedDay)
                Spacer()
                HStack(spacing: 16) {
                    verticalTemperatureView(min: true)
                    verticalTemperatureView(min: false)
                }
            }
            HStack(alignment: .center) {
                Spacer()
                day.icon.image
                    .font(.body)
                Spacer()
            }
        }
    }
    
    func verticalTemperatureView(min: Bool) -> some View {
        VStack(alignment: .trailing) {
            Text(min ? "min" : "max")
                .font(.footnote)
                .foregroundColor(.gray)
            Text(min ? day.minTemperature.formattedTemperature : day.maxTemperature.formattedTemperature)
                .font(.headline)
        }
    }
    
}

//#if DEBUG
//struct CityDailyView_Previews : PreviewProvider {
//    static var previews: some View {
//        CityDailyView()
//    }
//}
//#endif
