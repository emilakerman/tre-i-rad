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
    
    let blackC = "o"
    let blackX = "x"
    var listOfImages = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //start function that randomizes the starting player and clears playing field
        whoStarts()
        
        newList()
        
        xwinCounter.text = String(winCounterX)
        circleWinCounter.text = String(winCounterCircle)
        
    }
    //initiates a new list at start and restart
    func newList() {
        listOfImages.removeAll()
        listOfImages.insert(" ", at: 0)
        listOfImages.insert(" ", at: 1)
        listOfImages.insert(" ", at: 2)
        listOfImages.insert(" ", at: 3)
        listOfImages.insert(" ", at: 4)
        listOfImages.insert(" ", at: 5)
        listOfImages.insert(" ", at: 6)
        listOfImages.insert(" ", at: 7)
        listOfImages.insert(" ", at: 8)
    }
    //function that checks for a win and gives points
    func checkWin() {
        if listOfImages[0] == blackX && listOfImages[1] == blackX && listOfImages[2] == blackX {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if listOfImages[3] == blackX && listOfImages[4] == blackX && listOfImages[5] == blackX {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if listOfImages[6] == blackX && listOfImages[7] == blackX && listOfImages[8] == blackX {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if listOfImages[0] == blackX && listOfImages[3] == blackX && listOfImages[6] == blackX {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if listOfImages[1] == blackX && listOfImages[4] == blackX && listOfImages[7] == blackX {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if listOfImages[2] == blackX && listOfImages[5] == blackX && listOfImages[8] == blackX {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if listOfImages[0] == blackX && listOfImages[4] == blackX && listOfImages[8] == blackX {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if listOfImages[2] == blackX && listOfImages[4] == blackX && listOfImages[6] == blackX {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if listOfImages[0] == blackC && listOfImages[1] == blackC && listOfImages[2] == blackC {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if listOfImages[3] == blackC && listOfImages[4] == blackC && listOfImages[5] == blackC {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if listOfImages[6] == blackC && listOfImages[7] == blackC && listOfImages[8] == blackC {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if listOfImages[0] == blackC && listOfImages[3] == blackC && listOfImages[6] == blackC {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if listOfImages[1] == blackC && listOfImages[4] == blackC && listOfImages[7] == blackC {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if listOfImages[2] == blackC && listOfImages[5] == blackC && listOfImages[8] == blackC {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if listOfImages[0] == blackC && listOfImages[4] == blackC && listOfImages[8] == blackC {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if listOfImages[2] == blackC && listOfImages[4] == blackC && listOfImages[6] == blackC {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
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
    func addToTurnCounter() {
        turnCounter += playingField.generalCounter()
    }
    func addToWinCounterO() {
        winCounterCircle += playingField.generalCounter()
    }
    func addToWinCounterX() {
        winCounterX += playingField.generalCounter()
    }
    //separate gesture functions for all the available moves
    @IBAction func pressT(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        listOfImages.remove(at: 0)
        if turnCounter % 2 == 0 {
            listOfImages.insert(blackC, at: 0)
            number1.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            listOfImages.insert(blackX, at: 0)
            number1.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number2(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        listOfImages.remove(at: 1)
        if turnCounter % 2 == 0 {
            listOfImages.insert(blackC, at: 1)
            number2.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            listOfImages.insert(blackX, at: 1)
            number2.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func press3(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        listOfImages.remove(at: 2)
        if turnCounter % 2 == 0 {
            listOfImages.insert(blackC, at: 2)
            number3.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            listOfImages.insert(blackX, at: 2)
            number3.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func press4(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        listOfImages.remove(at: 3)
        if turnCounter % 2 == 0 {
            listOfImages.insert(blackC, at: 3)
            number4.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            listOfImages.insert(blackX, at: 3)
            number4.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number5(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        listOfImages.remove(at: 4)
        if turnCounter % 2 == 0 {
            listOfImages.insert(blackC, at: 4)
            number5.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            listOfImages.insert(blackX, at: 4)
            number5.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number6(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        listOfImages.remove(at: 5)
        if turnCounter % 2 == 0 {
            listOfImages.insert(blackC, at: 5)
            number6.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            listOfImages.insert(blackX, at: 5)
            number6.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number7(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        listOfImages.remove(at: 6)
        if turnCounter % 2 == 0 {
            listOfImages.insert(blackC, at: 6)
            number7.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            listOfImages.insert(blackX, at: 6)
            number7.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number8(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        listOfImages.remove(at: 7)
        if turnCounter % 2 == 0 {
            listOfImages.insert(blackC, at: 7)
            number8.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            listOfImages.insert(blackX, at: 7)
            number8.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number9(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        listOfImages.remove(at: 8)
        if turnCounter % 2 == 0 {
            listOfImages.insert(blackC, at: 8)
            number9.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            listOfImages.insert(blackX, at: 8)
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
        
        newList()
        
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
    } /*
    func checkCurrentPlayer() {
        if checkPlayer.changePlayer() == "X, your turn" {
            xPlayerText.text = "X, your turn"
            circlePlayerText.text = "-"
        } else if checkPlayer.changePlayer() == "O, your turn" {
            xPlayerText.text = "O, your turn"
            circlePlayerText.text = "-"
        }
    } */
}
