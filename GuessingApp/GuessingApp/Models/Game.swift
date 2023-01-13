//
//  Game.swift
//  GuessingApp
//
//  Created by Fernando Suarez on 11.01.23.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...10)
    var score: Int = 0
    var round: Int = 1
    
    func points(stepperValue: Int) -> Int {
        let difference = abs(target - stepperValue)
        var bonus = 0
        
        if difference == 0 {
            bonus = 100
        } else if difference == 1 {
            bonus = 50
        } else {
            bonus = 0
        }
        return bonus
    }
    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...10)
    }
    
    mutating func startOver() {
        score = 0
        round = 1
        target = Int.random(in: 1...10)
    }
}
