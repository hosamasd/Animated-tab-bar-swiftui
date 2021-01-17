//
//  Row1.swift
//  eWallets
//
//  Created by hosam on 1/13/21.
//

import SwiftUI

struct Row1: View {
    var body: some View {
       
        HStack(alignment: .top){
            
            CustomRowsView(text: "Send Money", image: "r11")
            
            Spacer(minLength: 15)
            
            CustomRowsView(text: "Receive Money", image: "r12")
            
            Spacer(minLength: 15)
            
            CustomRowsView(text: "Mobile Prepaid", image: "r13")
            
            Spacer(minLength: 15)
            
            CustomRowsView(text: "ReEletric Bill", image: "r14")
            
        }
        
    }
}

struct Row1_Previews: PreviewProvider {
    static var previews: some View {
        Row1()
    }
}
