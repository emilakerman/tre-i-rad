//
//  PlayingField.swift
//  Tre-i-rad
//
//  Created by Emil Åkerman on 2022-12-01.
//

import Foundation

class PlayingField {
    
    //let activePlayer = Int.random(in: 1 ..< 3)
    
    ///
    
    var listImages = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    
    func addImageO(at place: Int) -> String {
        listImages[place] = "o"
        return listImages[place]
    }
    func addImageX(at place: Int) -> String {
        listImages[place] = "x"
        return listImages[place]
    }
    

    
    ///
    
    func generalCounter() -> Int {
        var total = 0
        total += 1
        return total
    }
    func randomPlayer() -> Int {
        let numberR = Int.random(in: 1 ..< 3)
        return numberR
    }
    /*
    func changePlayer() -> String {
        if activePlayer % 2 == 0 {
            return "X, your turn"
        } else if activePlayer % 2 != 0 {
            return "O, your turn"
        }
        return "problem changing player"
    }
     */
}
