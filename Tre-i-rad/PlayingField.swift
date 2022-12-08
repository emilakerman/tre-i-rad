//
//  PlayingField.swift
//  Tre-i-rad
//
//  Created by Emil Åkerman on 2022-12-01.
//

import Foundation

class PlayingField {
    
    func generalCounter() -> Int {
        var total = 0
        total += 1
        return total
    }
    func randomPlayer() -> Int {
        let numberR = Int.random(in: 1 ..< 3)
        return numberR
    }
}
