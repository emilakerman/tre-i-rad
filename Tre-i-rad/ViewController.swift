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
    }
    @IBAction func pressT(_ sender: UITapGestureRecognizer) {
        number1.image = UIImage(named:"black_circle")
        number1.isUserInteractionEnabled = false
    }
    @IBAction func number2(_ sender: Any) {
        number2.image = UIImage(named:"black_circle")
        number2.isUserInteractionEnabled = false
    }
    @IBAction func press3(_ sender: Any) {
        number3.image = UIImage(named:"black_circle")
        number3.isUserInteractionEnabled = false
    }
    @IBAction func press4(_ sender: Any) {
        number4.image = UIImage(named:"black_circle")
        number4.isUserInteractionEnabled = false
    }
    @IBAction func number5(_ sender: Any) {
        number5.image = UIImage(named:"black_circle")
        number5.isUserInteractionEnabled = false
    }
    @IBAction func number6(_ sender: Any) {
        number6.image = UIImage(named:"black_circle")
        number6.isUserInteractionEnabled = false
    }
    @IBAction func number7(_ sender: Any) {
        number7.image = UIImage(named:"black_circle")
        number7.isUserInteractionEnabled = false
    }
    @IBAction func number8(_ sender: Any) {
        number8.image = UIImage(named:"black_circle")
        number8.isUserInteractionEnabled = false
    }
    @IBAction func number9(_ sender: Any) {
        number9.image = UIImage(named:"black_circle")
        number9.isUserInteractionEnabled = false
    }
}
