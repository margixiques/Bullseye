//
//  Game.swift
//  Bullseye
//
//  Created by Margarita Xiques on 8/09/22.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(target - sliderValue) + bonus(sliderValue: sliderValue)
    }
    
    func bonus(sliderValue: Int) -> Int {
        if target == sliderValue {
            return 100
        } else if abs(target - sliderValue) == 1 {
            return 50
        } else {
            return 0
        }
    }
    
   mutating func startNewRound(points: Int) {
       score += points
       round += 1
       target = Int.random(in: 1...100)
    }
}
