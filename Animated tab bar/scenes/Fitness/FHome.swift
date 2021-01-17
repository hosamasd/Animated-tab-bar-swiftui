//
//  Home.swift
//  Fitness
//
//  Created by hosam on 1/16/21.
//

import SwiftUI

struct FHome: View {
    
    @State var selected = 0
    var colors = [Color("Color1"),Color("Color")]
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    @StateObject var vm = ViewModel()
    
    var body: some View {
       
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack{
                
                HStack{
                    
                    Text("Hello Emma")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        
                        Image("menu")
                            .renderingMode(.template)
                            .foregroundColor(.white)
                    }
                }
                .padding()
                
                // Bar Chart...
                
                VStack(alignment: .leading, spacing: 25) {
                    
                    Text("Daily Workout in Hrs")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    HStack(spacing: 15){
                        
                        ForEach(vm.workout_Data){work in
                            
                            // Bars...
                            
                            BarsView(selected: $selected, work: work, vm: vm, colors: colors)
                           
                        }
                    }
                }
                .padding()
                .background(Color.white.opacity(0.06))
                .cornerRadius(10)
                .padding()
                
                HStack{
                    
                    Text("Statistics")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                }
                .padding()
                
                // stats Grid....
                
                LazyVGrid(columns: columns,spacing: 30){
                    
                    ForEach(vm.stats_Data){stat in
                        
                        StatsView(stat: stat, vm: vm)
                        
                    }
                }
                .padding()
                .padding(.bottom,bottom! == 0 ? 65 : bottom!+45)
            }
            
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
        
        // status bar color is not changing
        // its still in beta...
        
    }
}

struct Home_Prevsiews: PreviewProvider {
    static var previews: some View {
        FHome()
    }
}
