//
//  StatsView.swift
//  Fitness
//
//  Created by hosam on 1/16/21.
//

import SwiftUI

struct StatsView: View {
    
    var stat:Stats
    var vm:ViewModel
    
    
    var body: some View {
        
        VStack(spacing: 32){
            
            HStack{
                
                Text(stat.title)
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer(minLength: 0)
            }
            
            // Ring...
            
            ZStack{
                
                Circle()
                    .trim(from: 0, to: 1)
                    .stroke(stat.color.opacity(0.05), lineWidth: 10)
                    .frame(width: (UIScreen.main.bounds.width - 150) / 2, height: (UIScreen.main.bounds.width - 150) / 2)
                
                Circle()
                    .trim(from: 0, to: (stat.currentData / stat.goal))
                    .stroke(stat.color, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                    .frame(width: (UIScreen.main.bounds.width - 150) / 2, height: (UIScreen.main.bounds.width - 150) / 2)
                
                Text(vm.getPercent(current: stat.currentData, Goal: stat.goal) + " %")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(stat.color)
                    .rotationEffect(.init(degrees: 90))
            }
            .rotationEffect(.init(degrees: -90))
            
            Text(vm.getDec(val: stat.currentData) + " " + vm.getType(val: stat.title))
                .font(.system(size: 22))
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
        .padding()
        .background(Color.white.opacity(0.06))
        .cornerRadius(15)
        .shadow(color: Color.white.opacity(0.2), radius: 10, x: 0, y: 0)
    }
}


struct Home_Previsews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
