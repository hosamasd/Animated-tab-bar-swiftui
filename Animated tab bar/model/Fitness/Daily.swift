//
//  Daily.swift
//  Fitness
//
//  Created by hosam on 1/16/21.
//

import SwiftUI

// sample Data...

struct Daily : Identifiable {
    
    var id : Int
    var day : String
    var workout_In_Min : CGFloat
}

// stats Data...

struct Stats : Identifiable {
    
    var id : Int
    var title : String
    var currentData : CGFloat
    var goal : CGFloat
    var color : Color
}
