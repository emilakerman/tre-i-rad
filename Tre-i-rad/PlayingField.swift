//
//  PlayingField.swift
//  Tre-i-rad
//
//  Created by Emil Åkerman on 2022-12-01.
//

import Foundation

class PlayingField {
    
    var grid = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    let blackX = "x"
    let blackC = "o"
    
    //this initiates the empty list at the start of the game
    init() {
        grid.removeAll()
        grid.insert(" ", at: 0)
        grid.insert(" ", at: 1)
        grid.insert(" ", at: 2)
        grid.insert(" ", at: 3)
        grid.insert(" ", at: 4)
        grid.insert(" ", at: 5)
        grid.insert(" ", at: 6)
        grid.insert(" ", at: 7)
        grid.insert(" ", at: 8)
    }
    //this gets initiated after each round to clear the grid/board
    func initGrid() {
        grid.removeAll()
        grid.insert(" ", at: 0)
        grid.insert(" ", at: 1)
        grid.insert(" ", at: 2)
        grid.insert(" ", at: 3)
        grid.insert(" ", at: 4)
        grid.insert(" ", at: 5)
        grid.insert(" ", at: 6)
        grid.insert(" ", at: 7)
        grid.insert(" ", at: 8)
    }
    //this function is called after each move to check for a win
    func checkWinCondition() -> String {
        if grid[0] == blackX && grid[1] == blackX && grid[2] == blackX { return blackX }
        if grid[3] == blackX && grid[4] == blackX && grid[5] == blackX { return blackX }
        if grid[6] == blackX && grid[7] == blackX && grid[8] == blackX { return blackX }
        if grid[0] == blackX && grid[3] == blackX && grid[6] == blackX { return blackX }
        if grid[1] == blackX && grid[4] == blackX && grid[7] == blackX { return blackX }
        if grid[2] == blackX && grid[5] == blackX && grid[8] == blackX { return blackX }
        if grid[0] == blackX && grid[4] == blackX && grid[8] == blackX { return blackX }
        if grid[2] == blackX && grid[4] == blackX && grid[6] == blackX { return blackX }
        if grid[0] == blackC && grid[1] == blackC && grid[2] == blackC { return blackC }
        if grid[3] == blackC && grid[4] == blackC && grid[5] == blackC { return blackC }
        if grid[6] == blackC && grid[7] == blackC && grid[8] == blackC { return blackC }
        if grid[0] == blackC && grid[3] == blackC && grid[6] == blackC { return blackC }
        if grid[1] == blackC && grid[4] == blackC && grid[7] == blackC { return blackC }
        if grid[2] == blackC && grid[5] == blackC && grid[8] == blackC { return blackC }
        if grid[0] == blackC && grid[4] == blackC && grid[8] == blackC { return blackC }
        if grid[2] == blackC && grid[4] == blackC && grid[6] == blackC { return blackC }
        
        return "this never gets returned"
    }
    func generalCounter() -> Int {
        var total = 0
        total += 1
        return total
    }
    func randomPlayer() -> Int {
        let numberR = Int.random(in: 1 ..< 3)
        return numberR
    }/*
    //not used yet
    var activePlayer : Int = Int.random(in: 1 ..< 3)
    func changePlayer() -> String {
        if activePlayer % 2 == 0 {
            return "X, your turn"
        } else if activePlayer % 2 != 0 {
            return "O, your turn"
        }
        return "problem changing player"
    }*/
}
