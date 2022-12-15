//
//  PlayingField.swift
//  Tre-i-rad
//
//  Created by Emil Åkerman on 2022-12-01.
//

import Foundation

class PlayingField {
    
    var grid = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    
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
    //this get initiated after each round to clear the grid/board
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
        let blackX = "x"
        let blackC = "o"
        if grid[0] == blackX && grid[1] == blackX && grid[2] == blackX { return "x" }
        if grid[3] == blackX && grid[4] == blackX && grid[5] == blackX { return "x" }
        if grid[6] == blackX && grid[7] == blackX && grid[8] == blackX { return "x" }
        if grid[0] == blackX && grid[3] == blackX && grid[6] == blackX { return "x" }
        if grid[1] == blackX && grid[4] == blackX && grid[7] == blackX { return "x" }
        if grid[2] == blackX && grid[5] == blackX && grid[8] == blackX { return "x" }
        if grid[0] == blackX && grid[4] == blackX && grid[8] == blackX { return "x" }
        if grid[2] == blackX && grid[4] == blackX && grid[6] == blackX { return "x" }
        if grid[0] == blackC && grid[1] == blackC && grid[2] == blackC { return "o" }
        if grid[3] == blackC && grid[4] == blackC && grid[5] == blackC { return "o" }
        if grid[6] == blackC && grid[7] == blackC && grid[8] == blackC { return "o" }
        if grid[0] == blackC && grid[3] == blackC && grid[6] == blackC { return "o" }
        if grid[1] == blackC && grid[4] == blackC && grid[7] == blackC { return "o" }
        if grid[2] == blackC && grid[5] == blackC && grid[8] == blackC { return "o" }
        if grid[0] == blackC && grid[4] == blackC && grid[8] == blackC { return "o" }
        if grid[2] == blackC && grid[4] == blackC && grid[6] == blackC { return "o" }
        
        return "error"
    }
    
    /*
    func addImageO(at place: Int) -> String {
        listImages[place] = "o"
        return listImages[place]
    }
    func addImageX(at place: Int) -> String {
        listImages[place] = "x"
        return listImages[place]
    }
    
*/
    
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
