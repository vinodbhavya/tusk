//
//  Stop.swift
//  STOPS
//
//  Created by vinod on 29/11/2018.
//  Copyright © 2018 bhavya. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class Stop {
    
    var id:String
    var code:String
    var name:String
    
    init(id: String, code: String, name: String) {
        self.id = id
        self.code = code
        self.name = name
    }
}
