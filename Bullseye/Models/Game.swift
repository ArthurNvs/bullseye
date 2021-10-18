//
//  Game.swift
//  Bullseye
//
//  Created by Arthur Neves on 13/10/21.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(targetValue: Int) -> Int {
        100 - abs(targetValue - target)
    }
}
