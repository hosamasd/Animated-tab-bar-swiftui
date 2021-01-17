//
//  BarsView.swift
//  Fitness
//
//  Created by hosam on 1/16/21.
//

import SwiftUI

struct BarsView: View {
    
    @Binding var selected:Int
    var work:Daily
    var vm :ViewModel
    var colors:[Color] 
    
    var body: some View {
        VStack{
            
            VStack{
                
                Spacer(minLength: 0)
                
                if selected == work.id{
                    
                    Text(vm.getHrs(value: work.workout_In_Min))
                        .foregroundColor(Color("Color"))
                        .padding(.bottom,5)
                }
                
                RoundedShape()
                    .fill(LinearGradient(gradient: .init(colors: selected == work.id ? colors : [Color.white.opacity(0.06)]), startPoint: .top, endPoint: .bottom))
                // max height = 200
                    .frame(height: vm.getHeight(value: work.workout_In_Min))
            }
            .frame(height: 220)
            .onTapGesture {
                
                withAnimation(.easeOut){
                    
                    selected = work.id
                }
            }
            
            Text(work.day)
                .font(.caption)
                .foregroundColor(.white)
        }
    }
}
