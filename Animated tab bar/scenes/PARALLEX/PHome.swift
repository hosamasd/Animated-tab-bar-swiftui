//
//  PHome.swift
//  Animated tab bar
//
//  Created by hosam on 1/17/21.
//

import SwiftUI

struct PHome: View {
    
    @State var method:Bool = false
  
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            GeometryReader{reader in
                
                if reader.frame(in: .global).minY > -480 {
                
                Image("main")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    // moving View Up....
                    .offset(y: -reader.frame(in: .global).minY)
                // going to add parallax effect....
                    .frame(width: UIScreen.main.bounds.width, height: getHeight(reader: reader))
                
            }
            }
            // default frame...
            .frame(height: 480)
            
            VStack(alignment: .leading,spacing: 15){
                
                Text("Toys Story")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(.white)
                
                HStack(spacing: 15){
                    
                    ForEach(1...5,id: \.self){_ in
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(.white)
                    }
                }
                
                Text("Some Scene May Scare Very Young Childrens")
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(.top,5)
                
                Text(plot)
                    .padding(.top, 10)
                    .foregroundColor(.white)
                
                HStack(spacing: 15){
                    
                    Button(action: {withAnimation{method.toggle()}}, label: {
                        Text("Bookmark")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(Color.blue)
                            .cornerRadius(10)
                    })
                    
                    Button(action: {}, label: {
                        Text("Buy Tickes")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                            .background(Color.red)
                            .cornerRadius(10)
                    })
                }
                .padding(.top, 25)
                .padding(.bottom,bottom! == 0 ? 65 : bottom!+45)
            }
            .padding(.top, 25)
            .padding(.horizontal)
            .background(Color.black)
            .cornerRadius(20)
            .offset(y: -35)
            
        })
        .edgesIgnoringSafeArea(.all)
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
    
    func getHeight(reader:GeometryProxy)  ->CGFloat{
        return method ? reader.frame(in: .global).minY > 0 ? reader.frame(in: .global).minY + 480 : 480 : reader.frame(in: .global).minY + 480
    }
    
    
}

struct PHome_Previews: PreviewProvider {
    static var previews: some View {
        PHome()
    }
}
