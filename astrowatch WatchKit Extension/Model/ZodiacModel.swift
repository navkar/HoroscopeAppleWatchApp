//
//  ZodiacModel.swift
//  astrowatch WatchKit Extension
//
//  Created by Naveen Karamchetti on 6/30/20.
//  Copyright © 2020 Naveen Karamchetti. All rights reserved.
//

import Foundation

extension Int: Identifiable {
    public var id: Int {
        self
    }
}

struct ZodiacItem : Identifiable {
    let sign: String
    let icon: String
    var id: String {
        sign
    }
}

class ZodiacModel: ObservableObject {
    @Published var sunSigns = [ZodiacItem]() //empty array
    
    init() {
        load()
    }
    
    func load() {
        self.sunSigns.append(ZodiacItem(sign: "Aries", icon: "003-aries"))
        self.sunSigns.append(ZodiacItem(sign: "Taurus", icon: "043-taurus"))
        self.sunSigns.append(ZodiacItem(sign: "Gemini", icon: "015-gemini"))
        
        self.sunSigns.append(ZodiacItem(sign: "Cancer", icon: "006-cancer"))
        self.sunSigns.append(ZodiacItem(sign: "Leo", icon: "018-leo"))
        self.sunSigns.append(ZodiacItem(sign: "Virgo", icon: "048-virgo"))
        
        self.sunSigns.append(ZodiacItem(sign: "Libra", icon: "019-libra"))
        self.sunSigns.append(ZodiacItem(sign: "Scorpio", icon: "036-scorpio"))
        self.sunSigns.append(ZodiacItem(sign: "Sagittarius", icon: "034-sagittarius"))
        
        self.sunSigns.append(ZodiacItem(sign: "Capricorn", icon: "007-capricorn"))
        self.sunSigns.append(ZodiacItem(sign: "Aquarius", icon: "002-aquarius"))
        self.sunSigns.append(ZodiacItem(sign: "Pisces", icon: "029-pisces"))
    }

    /// Moves the a topic to a new index.
    /// - Parameter source: The set of indexes that are being moved.
    /// - Parameter destination: The index of the destination.
    func moveZodiacSign(from source: IndexSet, to destination: Int) {
        guard let index = source.first else {
            return
        }
        let element = sunSigns.remove(at: index)
        sunSigns.insert(element, at: destination)
    }
}
