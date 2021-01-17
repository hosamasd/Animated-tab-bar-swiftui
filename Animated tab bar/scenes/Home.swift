//
//  Home.swift
//  Animated tab bar
//
//  Created by hosam on 1/17/21.
//

import SwiftUI

struct Home: View {
    
    @State var selectedtab = "home"
    @EnvironmentObject var vm: MainViewModel

    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    // Location For each Curve...
    @State var xAxis: CGFloat = 0
//    @AppStorage("hid") var hideTab:Bool = false
    @Namespace var animation
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            TabView(selection: $selectedtab){
                PContentView()
//                Color("color1")
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("home")
                
                FContentView()
//                Color("color2")
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("box")
                
                SHContentView()
//                Color.purple
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("bell")
                
                EWContentView()
//                Color.blue
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("message")
            }
            
            // Custom tab Bar...
            
            if !vm.hideTab {
            CustomTabBar(selectedtab: $selectedtab, xAxis: $xAxis, name: animation)
                .padding(.horizontal,30)
                .padding(.vertical)
                .background(Color.white.clipShape(CustomShape(xAxis: xAxis)).cornerRadius(12))
                .padding(.horizontal)
                // Bottom Edge...
                .padding(.bottom,bottom! == 0 ? 15 : bottom)
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
var bottom = UIApplication.shared.windows.first?.safeAreaInsets.bottom
