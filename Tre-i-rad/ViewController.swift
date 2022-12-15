//
//  ViewController.swift
//  Tre-i-rad
//
//  Created by Emil Åkerman on 2022-11-29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var number1: UIImageView!
    @IBOutlet weak var number2: UIImageView!
    @IBOutlet weak var number3: UIImageView!
    @IBOutlet weak var number4: UIImageView!
    @IBOutlet weak var number5: UIImageView!
    @IBOutlet weak var number6: UIImageView!
    @IBOutlet weak var number7: UIImageView!
    @IBOutlet weak var number8: UIImageView!
    @IBOutlet weak var number9: UIImageView!
    @IBOutlet weak var circlePlayerText: UILabel!
    @IBOutlet weak var xPlayerText: UILabel!
    @IBOutlet weak var nextRoundButton: UIButton!
    @IBOutlet weak var xwinCounter: UILabel!
    @IBOutlet weak var circleWinCounter: UILabel!
    
    var turnCounter : Int = 2
    var winCounterCircle : Int = 0
    var winCounterX : Int = 0
    
    var playerXName : String = ""
    var playerOName : String = ""
    
    let playingField = PlayingField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        //start function that randomizes the starting player and clears playing field
        whoStarts()
                
        xwinCounter.text = String(winCounterX)
        circleWinCounter.text = String(winCounterCircle)
    }
    //function that checks for a win and gives points
    func checkWin() {
        let winResult = playingField.checkWinCondition()
        if winResult == playingField.blackX {
            xWinnerSituation()
        }
        if winResult == playingField.blackC {
            circleWinnerSituation()
        }
        
        xwinCounter.text = String(winCounterX)
        circleWinCounter.text = String(winCounterCircle)
        
        //shows the next round button and disables the playing field until next round
        if xPlayerText.text == "\(playerXName) You win!" || circlePlayerText.text == "\(playerOName) You win!" {
            nextRoundButton.isHidden = false
            nextRoundButton.setTitle("Next round!", for: .normal)
            disablePlayingField()
        } else if  //for stalemates
            number1.isUserInteractionEnabled == false
            && number2.isUserInteractionEnabled == false
            && number3.isUserInteractionEnabled == false
            && number4.isUserInteractionEnabled == false
            && number5.isUserInteractionEnabled == false
            && number6.isUserInteractionEnabled == false
            && number7.isUserInteractionEnabled == false
            && number8.isUserInteractionEnabled == false
            && number9.isUserInteractionEnabled == false
            && circlePlayerText.text != "\(playerOName) You win!"
            && xPlayerText.text != "\(playerXName) You lost!"
            && xPlayerText.text != "\(playerXName) You win!"
            && circlePlayerText.text != "\(playerOName) You lost!" {
            
            nextRoundButton.isHidden = false
            nextRoundButton.setTitle("Stalemate!", for: .normal)
            xPlayerText.text = ""
            circlePlayerText.text = ""
        }
    }
    //displays text when you win and adds to wincounter (for circle)
    func circleWinnerSituation() {
        circlePlayerText.text = "\(playerOName) You win!"
        xPlayerText.text = "\(playerXName) You lost!"
        winCounterCircle += playingField.generalCounter()
    }
    //displays text when you win and adds to wincounter (for X)
    func xWinnerSituation() {
        xPlayerText.text = "\(playerXName) You win!"
        circlePlayerText.text = "\(playerOName) You lost!"
        winCounterX += playingField.generalCounter()
    }
    //adds to the turncounter (the variable that checks current player)
    func addToTurnCounter() {
        turnCounter += playingField.generalCounter()
    }
    //separate gesture functions for all the available moves
    @IBAction func pressT(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        playingField.grid.remove(at: 0)
        if turnCounter % 2 == 0 {
            playingField.grid.insert(playingField.blackC, at: 0)
            number1.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            playingField.grid.insert(playingField.blackX, at: 0)
            number1.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number2(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        playingField.grid.remove(at: 1)
        if turnCounter % 2 == 0 {
            playingField.grid.insert(playingField.blackC, at: 1)
            number2.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            playingField.grid.insert(playingField.blackX, at: 1)
            number2.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func press3(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        playingField.grid.remove(at: 2)
        if turnCounter % 2 == 0 {
            playingField.grid.insert(playingField.blackC, at: 2)
            number3.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            playingField.grid.insert(playingField.blackX, at: 2)
            number3.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func press4(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        playingField.grid.remove(at: 3)
        if turnCounter % 2 == 0 {
            playingField.grid.insert(playingField.blackC, at: 3)
            number4.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            playingField.grid.insert(playingField.blackX, at: 3)
            number4.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number5(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        playingField.grid.remove(at: 4)
        if turnCounter % 2 == 0 {
            playingField.grid.insert(playingField.blackC, at: 4)
            number5.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            playingField.grid.insert(playingField.blackX, at: 4)
            number5.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number6(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        playingField.grid.remove(at: 5)
        if turnCounter % 2 == 0 {
            playingField.grid.insert(playingField.blackC, at: 5)
            number6.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            playingField.grid.insert(playingField.blackX, at: 5)
            number6.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number7(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        playingField.grid.remove(at: 6)
        if turnCounter % 2 == 0 {
            playingField.grid.insert(playingField.blackC, at: 6)
            number7.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            playingField.grid.insert(playingField.blackX, at: 6)
            number7.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number8(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        playingField.grid.remove(at: 7)
        if turnCounter % 2 == 0 {
            playingField.grid.insert(playingField.blackC, at: 7)
            number8.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            playingField.grid.insert(playingField.blackX, at: 7)
            number8.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number9(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        playingField.grid.remove(at: 8)
        if turnCounter % 2 == 0 {
            playingField.grid.insert(playingField.blackC, at: 8)
            number9.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            playingField.grid.insert(playingField.blackX, at: 8)
            number9.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    //the function that resets the round
    @IBAction func nextRoundAction(_ sender: UIButton) {
        whoStarts()
    }
    //the function that randomizes the starting player and clears the playing field
    func whoStarts() {
        
        playingField.initGrid()
        
        let result = playingField.randomPlayer()
        
        if result == 1 {
            turnCounter = 1
            circlePlayerText.text = "\(playerOName), Your turn"
        }
        if result == 2 {
            turnCounter = 2
            xPlayerText.text = "\(playerXName), Your turn"
        }
        number1.image = UIImage(named:"")
        number2.image = UIImage(named:"")
        number3.image = UIImage(named:"")
        number4.image = UIImage(named:"")
        number5.image = UIImage(named:"")
        number6.image = UIImage(named:"")
        number7.image = UIImage(named:"")
        number8.image = UIImage(named:"")
        number9.image = UIImage(named:"")
        nextRoundButton.isHidden = true
        number1.isUserInteractionEnabled = true
        number2.isUserInteractionEnabled = true
        number3.isUserInteractionEnabled = true
        number4.isUserInteractionEnabled = true
        number5.isUserInteractionEnabled = true
        number6.isUserInteractionEnabled = true
        number7.isUserInteractionEnabled = true
        number8.isUserInteractionEnabled = true
        number9.isUserInteractionEnabled = true
    }
    //disable the playing field
    func disablePlayingField() {
        number1.isUserInteractionEnabled = false
        number2.isUserInteractionEnabled = false
        number3.isUserInteractionEnabled = false
        number4.isUserInteractionEnabled = false
        number5.isUserInteractionEnabled = false
        number6.isUserInteractionEnabled = false
        number7.isUserInteractionEnabled = false
        number8.isUserInteractionEnabled = false
        number9.isUserInteractionEnabled = false
    }
}
