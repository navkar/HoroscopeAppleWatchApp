//
//  ContentView.swift
//  astrowatch WatchKit Extension
//
//  Created by Naveen Karamchetti on 6/30/20.
//  Copyright © 2020 Naveen Karamchetti. All rights reserved.
//

import SwiftUI

struct ForecastView: View {
    
    let sunsign: String
    let icon: String
    @ObservedObject var forecast: ForecastModel
    
    static let horoDateFormat: DateFormatter = {
           let formatter = DateFormatter()
           formatter.locale = Locale(identifier: "en_US_POSIX")
           formatter.dateStyle = .long
           return formatter
       }()
    
    var body: some View {
        ScrollView {
            VStack {
                Image(icon)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .scaledToFit()
                Text(sunsign)
                    .font(.system(.title, design: .rounded))
                Spacer()
                Text("\(Date(), formatter: Self.horoDateFormat)")
                    .font(.system(.body, design: .rounded))
                Spacer()
                Text(forecast.todaysHoroscope.horoscope)
                    .font(.system(.body, design: .rounded))
            }.padding()
        }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView(sunsign: "Aquarius", icon: "002-aquarius", forecast: ForecastModel(query: "Aquarius"))
    }
}
