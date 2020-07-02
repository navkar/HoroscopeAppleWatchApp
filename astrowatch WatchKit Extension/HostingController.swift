//
//  HostingController.swift
//  astrowatch WatchKit Extension
//
//  Created by Naveen Karamchetti on 6/30/20.
//  Copyright © 2020 Naveen Karamchetti. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<ZodiacList> {
    override var body: ZodiacList {
        ZodiacList(model: ZodiacModel())
    }
}
