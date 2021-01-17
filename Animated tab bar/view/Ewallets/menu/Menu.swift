//
//  Menu.swift
//  eWallets
//
//  Created by hosam on 1/13/21.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        
        VStack(spacing: 20){
            
            CustomRowView(text: "Home")
            
            CustomRowView(text: "Transactions")

            CustomRowView(text: "Profile")
            
            CustomRowView(text: "Accounts")
            
            CustomRowView(text: "Settings")
            
            CustomRowView(text: "Logout",image: "out")
                        
        }
        .padding()
        .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom)
        .background(Color.white)
        .cornerRadius(25)
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
