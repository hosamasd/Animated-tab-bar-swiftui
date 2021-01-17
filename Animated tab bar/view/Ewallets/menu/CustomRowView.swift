//
//  CustomRowView.swift
//  eWallets
//
//  Created by hosam on 1/13/21.
//

import SwiftUI

struct CustomRowView: View {
    
     var text:String
    var image:String = "arrow"
    
    var body: some View {
        Button(action: {
            
        }) {
            
            HStack{
                
                Text(text)
                
                Spacer()
                
                Image(image)
                
            }
            .foregroundColor(.black)
            
        }
        .padding()
        .background(Color.black.opacity(0.05))
        .cornerRadius(10)
    }
}
