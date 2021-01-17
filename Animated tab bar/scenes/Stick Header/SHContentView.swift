//
//  ContentView.swift
//  Stick header
//
//  Created by hosam on 1/13/21.
//

import SwiftUI

struct SHContentView: View {
    var body: some View {
        SHHome()
            .preferredColorScheme(.dark)
    }
}

struct ContentView_PreDviews: PreviewProvider {
    static var previews: some View {
        SHContentView()
    }
}
