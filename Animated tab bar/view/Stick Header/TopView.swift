//
//  TopView.swift
//  Stick header
//
//  Created by hosam on 1/13/21.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        
        HStack{
            
            VStack(alignment: .leading, spacing: 12) {
                
                HStack(alignment: .top){
                    
                    Image("apple")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 25, height: 30)
                        // for dark mode adaption...
                        .foregroundColor(.primary)
                    
                    Text("Arcade")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                Text("One Month free, then $4.99/month.")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer(minLength: 0)
            
            Button(action: {
                
            }) {
                
                Text("Try It Free")
                    .foregroundColor(.white)
                    .padding(.vertical,10)
                    .padding(.horizontal, 25)
                    .background(Color.blue)
                    .clipShape(Capsule())
            }
            
        }
        // for non safe area phones padding will be 15...
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top == 0 ? 15 : (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 5 )
        .padding(.horizontal)
        .padding(.bottom)
        .background(BlurBG())
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
