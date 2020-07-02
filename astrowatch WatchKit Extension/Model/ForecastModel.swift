//
//  ForecastModel.swift
//  astrowatch WatchKit Extension
//
//  Created by Naveen Karamchetti on 7/1/20.
//  Copyright © 2020 Naveen Karamchetti. All rights reserved.
//

import Foundation
import Combine

struct TodaysHoroscope: Codable {
    let date: String
    let horoscope: String
    let sunsign: String
}

class ForecastModel: ObservableObject {
    @Published var todaysHoroscope: TodaysHoroscope = TodaysHoroscope(date: "", horoscope: "", sunsign: "")
        
    init(query: String) {
        load(input: query)
    }
    
    func load(input: String) {
       let url = URL(string: "https://horoscope-api.herokuapp.com/horoscope/today/" + input)!
        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let d = data {
                    let decoded = try JSONDecoder().decode(TodaysHoroscope.self, from: d)
                    DispatchQueue.main.async {
                        self.todaysHoroscope = decoded
                    }
                }else {
                    print("No Data")
                }
            } catch {
                print("Unexpected error: \(error).")
            }
            
        }.resume()
    }

}
