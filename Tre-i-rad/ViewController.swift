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
    
    let RNG = PlayingField()
    let plusOne = PlayingField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //start function that randomizes the starting player and clears playing field
        whoStarts()
        
        xwinCounter.text = String(winCounterX)
        circleWinCounter.text = String(winCounterCircle)
    }
    //function that checks for a win and gives points
    func checkWin() {
        if number1.image == UIImage(named:"black_circle") && number2.image == UIImage(named:"black_circle") && number3.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if number1.image == UIImage(named:"black_circle") && number4.image == UIImage(named:"black_circle") && number7.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if number1.image == UIImage(named:"black_circle") && number5.image == UIImage(named:"black_circle") && number9.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if number2.image == UIImage(named:"black_circle") && number5.image == UIImage(named:"black_circle") && number8.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if number3.image == UIImage(named:"black_circle") && number6.image == UIImage(named:"black_circle") && number9.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if number4.image == UIImage(named:"black_circle") && number5.image == UIImage(named:"black_circle") && number6.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if number7.image == UIImage(named:"black_circle") && number8.image == UIImage(named:"black_circle") && number9.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if number3.image == UIImage(named:"black_circle") && number5.image == UIImage(named:"black_circle") && number7.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            addToWinCounterO()
        }
        if number1.image == UIImage(named:"black_x") && number2.image == UIImage(named:"black_x") && number3.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if number1.image == UIImage(named:"black_x") && number4.image == UIImage(named:"black_x") && number7.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if number1.image == UIImage(named:"black_x") && number5.image == UIImage(named:"black_x") && number9.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if number2.image == UIImage(named:"black_x") && number5.image == UIImage(named:"black_x") && number8.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if number3.image == UIImage(named:"black_x") && number6.image == UIImage(named:"black_x") && number9.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if number4.image == UIImage(named:"black_x") && number5.image == UIImage(named:"black_x") && number6.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if number7.image == UIImage(named:"black_x") && number8.image == UIImage(named:"black_x") && number9.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        if number3.image == UIImage(named:"black_x") && number5.image == UIImage(named:"black_x") && number7.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            addToWinCounterX()
        }
        xwinCounter.text = String(winCounterX)
        circleWinCounter.text = String(winCounterCircle)
        
        
        //shows the next round button and disables the playing field until next round
        if xPlayerText.text == "\(playerXName) You win!" || circlePlayerText.text == "\(playerOName) You win!" {
            nextRoundButton.isHidden = false
            nextRoundButton.setTitle("Next round!", for: .normal)
            disablePlayingField()
        } else if  //for stalemates --- does it work now?
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
        turnCounter += plusOne.generalCounter()
    }
    func addToWinCounterO() {
        winCounterCircle += plusOne.generalCounter()
    }
    func addToWinCounterX() {
        winCounterX += plusOne.generalCounter()
    }
    //separate gesture functions for all the available moves
    @IBAction func pressT(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        if turnCounter % 2 == 0 {
            number1.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            number1.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number2(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        if turnCounter % 2 == 0 {
            number2.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            number2.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func press3(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        if turnCounter % 2 == 0 {
            number3.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            number3.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func press4(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        if turnCounter % 2 == 0 {
            number4.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            number4.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number5(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        if turnCounter % 2 == 0 {
            number5.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            number5.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number6(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        if turnCounter % 2 == 0 {
            number6.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            number6.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number7(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        if turnCounter % 2 == 0 {
            number7.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            number7.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number8(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        if turnCounter % 2 == 0 {
            number8.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
            number8.image = UIImage(named:"black_x")
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
        }
        sender.view?.isUserInteractionEnabled = false
        checkWin()
    }
    @IBAction func number9(_ sender: UITapGestureRecognizer) {
        addToTurnCounter()
        if turnCounter % 2 == 0 {
            number9.image = UIImage(named:"black_circle")
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
        } else {
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
        let result = RNG.randomPlayer()
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
