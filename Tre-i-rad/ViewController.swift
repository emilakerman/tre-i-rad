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
    
    let RNG = RandomNumberGenerator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        number1.image = UIImage(named:"")
        number2.image = UIImage(named:"")
        number3.image = UIImage(named:"")
        number4.image = UIImage(named:"")
        number5.image = UIImage(named:"")
        number6.image = UIImage(named:"")
        number7.image = UIImage(named:"")
        number8.image = UIImage(named:"")
        number9.image = UIImage(named:"")

        //start function that randomizes the starting player
        whoStarts()
        
        xwinCounter.text = String(winCounterX)
        circleWinCounter.text = String(winCounterCircle)
        
        
    }
    //function that checks for a win and gives points
    func checkWin() {
        if number1.image == UIImage(named:"black_circle") && number2.image == UIImage(named:"black_circle") && number3.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            winCounterCircle += 1
        }
        if number1.image == UIImage(named:"black_circle") && number4.image == UIImage(named:"black_circle") && number7.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            winCounterCircle += 1
        }
        if number1.image == UIImage(named:"black_circle") && number5.image == UIImage(named:"black_circle") && number9.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            winCounterCircle += 1
        }
        if number2.image == UIImage(named:"black_circle") && number5.image == UIImage(named:"black_circle") && number8.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            winCounterCircle += 1
        }
        if number3.image == UIImage(named:"black_circle") && number6.image == UIImage(named:"black_circle") && number9.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            winCounterCircle += 1
        }
        if number4.image == UIImage(named:"black_circle") && number5.image == UIImage(named:"black_circle") && number6.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            winCounterCircle += 1
        }
        if number7.image == UIImage(named:"black_circle") && number8.image == UIImage(named:"black_circle") && number9.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            winCounterCircle += 1
        }
        if number3.image == UIImage(named:"black_circle") && number5.image == UIImage(named:"black_circle") && number7.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "\(playerOName) You win!"
            xPlayerText.text = "\(playerXName) You lost!"
            winCounterCircle += 1
        }
        if number1.image == UIImage(named:"black_x") && number2.image == UIImage(named:"black_x") && number3.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            winCounterX += 1
        }
        if number1.image == UIImage(named:"black_x") && number4.image == UIImage(named:"black_x") && number7.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            winCounterX += 1
        }
        if number1.image == UIImage(named:"black_x") && number5.image == UIImage(named:"black_x") && number9.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            winCounterX += 1
        }
        if number2.image == UIImage(named:"black_x") && number5.image == UIImage(named:"black_x") && number8.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            winCounterX += 1
        }
        if number3.image == UIImage(named:"black_x") && number6.image == UIImage(named:"black_x") && number9.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            winCounterX += 1
        }
        if number4.image == UIImage(named:"black_x") && number5.image == UIImage(named:"black_x") && number6.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            winCounterX += 1
        }
        if number7.image == UIImage(named:"black_x") && number8.image == UIImage(named:"black_x") && number9.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            winCounterX += 1
        }
        if number3.image == UIImage(named:"black_x") && number5.image == UIImage(named:"black_x") && number7.image == UIImage(named:"black_x") {
            xPlayerText.text = "\(playerXName) You win!"
            circlePlayerText.text = "\(playerOName) You lost!"
            winCounterX += 1
        }
        xwinCounter.text = String(winCounterX)
        circleWinCounter.text = String(winCounterCircle)
        
        
        //shows the next round button and locks the playing field until next round
        if xPlayerText.text == "\(playerXName) You win!" || circlePlayerText.text == "\(playerOName) You win!" {
            nextRoundButton.isHidden = false
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
        
        //for stalemates --- not 100%, sometimes this IF statement is true even though somebody won
        else if
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
    //separate gesture functions for all the available moves
    @IBAction func pressT(_ sender: UITapGestureRecognizer) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number1.image = UIImage(named:"black_circle")
            number1.isUserInteractionEnabled = false
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number1.image = UIImage(named:"black_x")
            number1.isUserInteractionEnabled = false
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func number2(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number2.image = UIImage(named:"black_circle")
            number2.isUserInteractionEnabled = false
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number2.image = UIImage(named:"black_x")
            number2.isUserInteractionEnabled = false
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func press3(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number3.image = UIImage(named:"black_circle")
            number3.isUserInteractionEnabled = false
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number3.image = UIImage(named:"black_x")
            number3.isUserInteractionEnabled = false
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func press4(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number4.image = UIImage(named:"black_circle")
            number4.isUserInteractionEnabled = false
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number4.image = UIImage(named:"black_x")
            number4.isUserInteractionEnabled = false
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func number5(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number5.image = UIImage(named:"black_circle")
            number5.isUserInteractionEnabled = false
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number5.image = UIImage(named:"black_x")
            number5.isUserInteractionEnabled = false
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func number6(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number6.image = UIImage(named:"black_circle")
            number6.isUserInteractionEnabled = false
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number6.image = UIImage(named:"black_x")
            number6.isUserInteractionEnabled = false
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func number7(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number7.image = UIImage(named:"black_circle")
            number7.isUserInteractionEnabled = false
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number7.image = UIImage(named:"black_x")
            number7.isUserInteractionEnabled = false
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func number8(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number8.image = UIImage(named:"black_circle")
            number8.isUserInteractionEnabled = false
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number8.image = UIImage(named:"black_x")
            number8.isUserInteractionEnabled = false
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func number9(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number9.image = UIImage(named:"black_circle")
            number9.isUserInteractionEnabled = false
            xPlayerText.text = "\(playerXName), Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number9.image = UIImage(named:"black_x")
            number9.isUserInteractionEnabled = false
            circlePlayerText.text = "\(playerOName), Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    //the function that resets the round
    @IBAction func nextRoundAction(_ sender: UIButton) {
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
        whoStarts()
    }
    //the function that randomizes the starting player, with MVC(?) class
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
    }
}
