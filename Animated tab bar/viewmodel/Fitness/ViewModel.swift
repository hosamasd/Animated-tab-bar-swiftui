//
//  ViewModel.swift
//  Fitness
//
//  Created by hosam on 1/16/21.
//

import SwiftUI

class ViewModel: ObservableObject {
@Published var stats_Data = [
    
    Stats(id: 0, title: "Running", currentData: 6.8, goal: 15, color: Color("running")),
    
    Stats(id: 1, title: "Water", currentData: 3.5, goal: 5, color: Color("water")),
    
    Stats(id: 2, title: "Energy Burn", currentData: 585, goal: 1000, color: Color("energy")),
    
    Stats(id: 3, title: "Sleep", currentData: 6.2, goal: 10, color: Color("sleep")),
    
    Stats(id: 4, title: "Cycling", currentData: 12.5, goal: 25, color: Color("cycle")),
    
    Stats(id: 5, title: "Steps", currentData: 16889, goal: 20000, color: Color("steps")),
]
    
    @Published var workout_Data = [
        
        Daily(id: 0, day: "Day 1", workout_In_Min: 480),
        Daily(id: 1, day: "Day 2", workout_In_Min: 880),
        Daily(id: 2, day: "Day 3", workout_In_Min: 250),
        Daily(id: 3, day: "Day 4", workout_In_Min: 360),
        Daily(id: 4, day: "Day 5", workout_In_Min: 1220),
        Daily(id: 5, day: "Day 6", workout_In_Min: 750),
        Daily(id: 6, day: "Day 7", workout_In_Min: 950)
    ]
    
    // calculating Type...
    
    func getType(val: String)->String{
        
        switch val {
        case "Water": return "L"
        case "Sleep": return "Hrs"
        case "Running": return "Km"
        case "Cycling": return "Km"
        case "Steps": return "stp"
        default: return "Kcal"
        }
    }
    
    // converting Number to decimal...
    
    func getDec(val: CGFloat)->String{
        
        let format = NumberFormatter()
        format.numberStyle = .decimal
        
        return format.string(from: NSNumber.init(value: Float(val)))!
    }
    
    // calculating percent...
    
    func getPercent(current : CGFloat,Goal : CGFloat)->String{
        
        let per = (current / Goal) * 100
        
        return String(format: "%.1f", per)
    }
    
    // calculating Hrs For Height...
    
    func getHeight(value : CGFloat)->CGFloat{
        
        // the value in minutes....
        // 24 hrs in min = 1440
        
        let hrs = CGFloat(value / 1440) * 200
        
        return hrs
    }
    
    // getting hrs...
    
    func getHrs(value: CGFloat)->String{
        
        let hrs = value / 60
        
        return String(format: "%.1f", hrs)
    }
}
