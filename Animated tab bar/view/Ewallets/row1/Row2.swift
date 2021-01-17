//
//  Row2.swift
//  eWallets
//
//  Created by hosam on 1/13/21.
//

import SwiftUI

struct Row2: View {
    var body: some View {
        HStack(alignment: .top){
            
            CustomRowsView(text: "Cashback Offer", image: "r21")
            
            Spacer(minLength: 15)
            
            CustomRowsView(text: "Movie Tickets", image: "r22")
            
            Spacer(minLength: 15)
            
            CustomRowsView(text: "Flight Tickets", image: "r23")
            
            Spacer(minLength: 15)
            
            CustomRowsView(text: "More Options", image: "r24")
            
        }
    }
}

struct Row2_Previews: PreviewProvider {
    static var previews: some View {
        Row2()
    }
}
