//
//  ZodiacList.swift
//  astrowatch WatchKit Extension
//
//  Created by Naveen Karamchetti on 6/30/20.
//  Copyright © 2020 Naveen Karamchetti. All rights reserved.
//

import SwiftUI
import Combine

struct ZodiacList: View {
    
    @ObservedObject var model: ZodiacModel
    
    var body: some View {
        List {
            ForEach(model.sunSigns) { x in
                NavigationLink(destination: ForecastView(sunsign: x.sign, icon: x.icon, forecast: ForecastModel(query: x.sign) )) {
                    ZodiacSignCell(item: x)
                        .frame(height: 100.0)
                }
            }
            .onMove { self.model.moveZodiacSign(from: $0, to: $1) }
        }
        .listStyle(CarouselListStyle())
        .navigationBarTitle(Text("Your forecast"))
    }
}

struct ZodiacSignCell: View {
    var item: ZodiacItem

    var body: some View {
        HStack(alignment:.center) {
            HStack(alignment:.center) {
                Image(item.icon)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .scaledToFit()
            }
            .padding()
            
            Text(item.sign)
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(.caption, design: .rounded))
            }
        }
}

struct ZodiacList_Previews: PreviewProvider {
    static var previews: some View {
        ZodiacList(model: ZodiacModel())
    }
}
