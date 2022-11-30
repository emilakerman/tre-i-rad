//
//  RandomNumberGenerator.swift
//  Tre-i-rad
//
//  Created by Emil Åkerman on 2022-11-30.
//

import Foundation

class RandomNumberGenerator {
    
    func randomPlayer() -> Int {
        let numberR = Int.random(in: 1 ..< 3)
        return numberR
    }
}
