//
//  CardView.swift
//  Stick header
//
//  Created by hosam on 1/13/21.
//

import SwiftUI

struct CardView: View {
    
    var data : Card
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 20){
            
            Image(self.data.image)
            
            VStack(alignment: .leading, spacing: 6) {
                
                Text(self.data.title)
                    .fontWeight(.bold)
                
                Text(self.data.subTitile)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                HStack(spacing: 12){
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("GET")
                            .fontWeight(.bold)
                            .padding(.vertical,10)
                            .padding(.horizontal,25)
                            // for adapting to dark mode...
                            .background(Color.primary.opacity(0.06))
                            .clipShape(Capsule())
                    }
                    
                    Text("In-App\nPurchases")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
            }
            
            Spacer(minLength: 0)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(data:     Card(id: 0, image: "g1", title: "Zombie Gunship Survival", subTitile: "Tour the apocalypse")
)
    }
}
