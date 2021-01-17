//
//  Animated_tab_barApp.swift
//  Animated tab bar
//
//  Created by hosam on 1/17/21.
//

import SwiftUI

@main
struct Animated_tab_barApp: App {
    var order = MainViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
