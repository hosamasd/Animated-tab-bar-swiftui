//
//  CustomView.swift
//  eWallets
//
//  Created by hosam on 1/13/21.
//

import SwiftUI

struct CustomRowsView: View {
    
    var text:String
   var image:String
    
    var body: some View {
        Button(action: {
            
        }) {
            
            VStack(spacing: 8){
                
                VStack{
                    
                    Image("\(image)")
                        .renderingMode(.original)
                    
                }
                .padding()
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                
                Text(text)
                .frame(width: 55)
                .font(.caption)
                    .foregroundColor(Color.black.opacity(0.5))
                    .multilineTextAlignment(.center)
            }
        }
    }
}
