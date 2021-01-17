//
//  CustomTabBar.swift
//  Animated tab bar
//
//  Created by hosam on 1/17/21.
//

import SwiftUI

struct CustomTabBar: View {
    
    var tabs = ["home","box","bell","message"]
    @Binding var selectedtab:String
    @Binding var xAxis:CGFloat
    var name : Namespace.ID
    
    var body: some View {
        
        HStack(spacing: 0){
            
            ForEach(tabs,id: \.self){image in
                
                GeometryReader {reader in
                    Button(action: {
                        withAnimation(.spring()){
                            selectedtab = image
                            xAxis = reader.frame(in: .global).minX
                        }
                    }, label: {
                        
                        Image(image)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .foregroundColor(selectedtab == image ? getColor(image: image) : Color.gray)
                            .padding(selectedtab == image ? 15 : 0)
                            .background(Color.white.opacity(selectedtab == image ? 1 : 0)
                                            .clipShape(Circle()))
                            .matchedGeometryEffect(id: image, in: name)
                            .offset(x: selectedtab == image ? (reader.frame(in: .global).minX - reader.frame(in: .global).midX) : 0,y: selectedtab == image ? -50 : 0)
                        
                    })
                    .onAppear(perform: {
                        
                        if image == tabs.first{
                            xAxis = reader.frame(in: .global).minX
                        }
                    })
                }
                .frame(width: 25, height: 30)
                
                if image != tabs.last{Spacer(minLength: 0)}
            }
        }
    }
    
    // getting Image Color....
    
    func getColor(image: String)->Color{
        
        switch image {
        case "home":
            return Color("color1")
        case "box":
            return Color("color2")
        case "bell":
            return Color.purple
        default:
            return Color.blue
        }
    }
}
