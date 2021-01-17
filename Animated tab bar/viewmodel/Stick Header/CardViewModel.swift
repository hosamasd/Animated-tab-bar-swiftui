//
//  CardViewModel.swift
//  Stick header
//
//  Created by hosam on 1/13/21.
//

import SwiftUI

class CardViewModel: ObservableObject {
   @Published  var data = [
    
    Card(id: 0, image: "g1", title: "Zombie Gunship Survival", subTitile: "Tour the apocalypse"),
    Card(id: 1, image: "g2", title: "Portal", subTitile: "Travel through dimensions"),
    Card(id: 2, image: "g3", title: "Wave Form", subTitile: "Fun enagaging wave game"),
    Card(id: 3, image: "g4", title: "Temple Run", subTitile: "Run for your life"),
    Card(id: 4, image: "g5", title: "World of Warcrat", subTitile: "Be whoever you want"),
    Card(id: 5, image: "g6", title: "Alto’s Adventure", subTitile: "A snowboarding odyssey"),
    Card(id: 6, image: "g7", title: "Space Frog", subTitile: "Jump and have fun"),
    Card(id: 7, image: "g8", title: "Dinosaur Mario", subTitile: "Keep running")
]
}
