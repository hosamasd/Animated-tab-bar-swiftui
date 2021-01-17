//
//  ContentView.swift
//  Animated tab bar
//
//  Created by hosam on 1/17/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedtab = "home"
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    // Location For each Curve...
    @State var xAxis: CGFloat = 0
    
    @Namespace var animation
    
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
