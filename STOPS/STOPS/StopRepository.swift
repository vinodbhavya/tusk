//
//  StopRepository.swift
//  STOPS
//
//  Created by vinod on 03/12/2018.
//  Copyright © 2018 bhavya. All rights reserved.
//

import Foundation
class StopRepository {
    
    static let repository = StopRepository()
    
    private init () {}
    
    var stops = [Stop]()
    let defaults = UserDefaults.standard
    
    func saveStops () {
        if let s = archivestopArray(stopDataArray: stops) {
            
            defaults.set(s, forKey: Constants.STOP_ARCHIVE)
            
            print("s: \(s)")
        }
}

func loadStops (){
    
    let d = defaults.data(forKey: Constants.STOP_Archive)
    if d != nil {
        Stop = loadStopArray(unarchivedObject: d as! Data)
        print("d: \(d)")
    }
    
}

func archivestopArray(stopDataArray : [Stop]) -> Data? {
    return try? NSKeyedArchiver.archivedData(withRootObject: stopDataArray as Array, requiringSecureCoding: false)
}
func loadStopArray(unarchivedObject: Data) -> [Stop] {
    return try! NSKeyedUnarchiver.unarchivedObject(ofClasses: [NSArray.self, Stop.self], from: unarchivedObject) as! [Stop]
}
}
