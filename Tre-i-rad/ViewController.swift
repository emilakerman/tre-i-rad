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
    
    var turnCounter : Int = 2
    
    
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

        //start
        xPlayerText.text = "(X) Your turn"
        
    }
    func checkWin() {
        if number1.image == UIImage(named:"black_circle") && number2.image == UIImage(named:"black_circle") && number3.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "(O) You win!"
            xPlayerText.text = "(X) You lost!"
        }
        if number1.image == UIImage(named:"black_circle") && number4.image == UIImage(named:"black_circle") && number6.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "(O) You win!"
            xPlayerText.text = "(X) You lost!"
        }
        if number1.image == UIImage(named:"black_circle") && number5.image == UIImage(named:"black_circle") && number9.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "(O) You win!"
            xPlayerText.text = "(X) You lost!"
        }
        if number2.image == UIImage(named:"black_circle") && number5.image == UIImage(named:"black_circle") && number8.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "(O) You win!"
            xPlayerText.text = "(X) You lost!"
        }
        if number3.image == UIImage(named:"black_circle") && number6.image == UIImage(named:"black_circle") && number9.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "(O) You win!"
            xPlayerText.text = "(X) You lost!"
        }
        if number4.image == UIImage(named:"black_circle") && number5.image == UIImage(named:"black_circle") && number6.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "(O) You win!"
            xPlayerText.text = "(X) You lost!"
        }
        if number7.image == UIImage(named:"black_circle") && number8.image == UIImage(named:"black_circle") && number9.image == UIImage(named:"black_circle") {
            circlePlayerText.text = "(O) You win!"
            xPlayerText.text = "(X) You lost!"
        }
        if number1.image == UIImage(named:"black_x") && number2.image == UIImage(named:"black_x") && number3.image == UIImage(named:"black_x") {
            xPlayerText.text = "(X) You win!"
            circlePlayerText.text = "(O) You lost!"
        }
        if number1.image == UIImage(named:"black_x") && number4.image == UIImage(named:"black_x") && number6.image == UIImage(named:"black_x") {
            xPlayerText.text = "(X) You win!"
            circlePlayerText.text = "(O) You lost!"
        }
        if number1.image == UIImage(named:"black_x") && number5.image == UIImage(named:"black_x") && number9.image == UIImage(named:"black_x") {
            xPlayerText.text = "(X) You win!"
            circlePlayerText.text = "(O) You lost!"
        }
        if number2.image == UIImage(named:"black_x") && number5.image == UIImage(named:"black_x") && number8.image == UIImage(named:"black_x") {
            xPlayerText.text = "(X) You win!"
            circlePlayerText.text = "(O) You lost!"
        }
        if number3.image == UIImage(named:"black_x") && number6.image == UIImage(named:"black_x") && number9.image == UIImage(named:"black_x") {
            xPlayerText.text = "(X) You win!"
            circlePlayerText.text = "(O) You lost!"
        }
        if number4.image == UIImage(named:"black_x") && number5.image == UIImage(named:"black_x") && number6.image == UIImage(named:"black_x") {
            xPlayerText.text = "(X) You win!"
            circlePlayerText.text = "(O) You lost!"
        }
        if number7.image == UIImage(named:"black_x") && number8.image == UIImage(named:"black_x") && number9.image == UIImage(named:"black_x") {
            xPlayerText.text = "(X) You win!"
            circlePlayerText.text = "(O) You lost!"
        }
    }
    @IBAction func pressT(_ sender: UITapGestureRecognizer) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number1.image = UIImage(named:"black_circle")
            number1.isUserInteractionEnabled = false
            xPlayerText.text = "(X) Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number1.image = UIImage(named:"black_x")
            number1.isUserInteractionEnabled = false
            circlePlayerText.text = "(O) Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func number2(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number2.image = UIImage(named:"black_circle")
            number2.isUserInteractionEnabled = false
            xPlayerText.text = "(X) Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number2.image = UIImage(named:"black_x")
            number2.isUserInteractionEnabled = false
            circlePlayerText.text = "(O) Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func press3(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number3.image = UIImage(named:"black_circle")
            number3.isUserInteractionEnabled = false
            xPlayerText.text = "(X) Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number3.image = UIImage(named:"black_x")
            number3.isUserInteractionEnabled = false
            circlePlayerText.text = "(O) Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func press4(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number4.image = UIImage(named:"black_circle")
            number4.isUserInteractionEnabled = false
            xPlayerText.text = "(X) Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number4.image = UIImage(named:"black_x")
            number4.isUserInteractionEnabled = false
            circlePlayerText.text = "(O) Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func number5(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number5.image = UIImage(named:"black_circle")
            number5.isUserInteractionEnabled = false
            xPlayerText.text = "(X) Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number5.image = UIImage(named:"black_x")
            number5.isUserInteractionEnabled = false
            circlePlayerText.text = "(O) Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func number6(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number6.image = UIImage(named:"black_circle")
            number6.isUserInteractionEnabled = false
            xPlayerText.text = "(X) Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number6.image = UIImage(named:"black_x")
            number6.isUserInteractionEnabled = false
            circlePlayerText.text = "(O) Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func number7(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number7.image = UIImage(named:"black_circle")
            number7.isUserInteractionEnabled = false
            xPlayerText.text = "(X) Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number7.image = UIImage(named:"black_x")
            number7.isUserInteractionEnabled = false
            circlePlayerText.text = "(O) Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func number8(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number8.image = UIImage(named:"black_circle")
            number8.isUserInteractionEnabled = false
            xPlayerText.text = "(X) Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number8.image = UIImage(named:"black_x")
            number8.isUserInteractionEnabled = false
            circlePlayerText.text = "(O) Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
    @IBAction func number9(_ sender: Any) {
    turnCounter += 1
        if turnCounter % 2 == 0 {
            number9.image = UIImage(named:"black_circle")
            number9.isUserInteractionEnabled = false
            xPlayerText.text = "(X) Your turn"
            circlePlayerText.text = ""
            checkWin()
        } else {
            number9.image = UIImage(named:"black_x")
            number9.isUserInteractionEnabled = false
            circlePlayerText.text = "(O) Your turn"
            xPlayerText.text = ""
            checkWin()
        }
    }
}
