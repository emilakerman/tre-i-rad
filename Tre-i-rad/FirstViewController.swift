//
//  FirstViewController.swift
//  Tre-i-rad
//
//  Created by Emil Åkerman on 2022-11-29.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var playerONameFIeld: UITextField!
    @IBOutlet weak var playerXnameField: UITextField!
    @IBOutlet weak var fillFieldsButton: UIButton!
    @IBOutlet weak var saveAndStartButton: UIButton!
    
    let moveActivity = "seguetoGameView"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerXnameField.addTarget(self, action: #selector(FirstViewController.textFieldDidChange(_:)), for: .editingChanged)
        playerONameFIeld.addTarget(self, action: #selector(FirstViewController.textFieldDidChange(_:)), for: .editingChanged)
    }
    @IBAction func buttonPress(_ sender: UIButton) {
            performSegue(withIdentifier: moveActivity, sender: self)
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == moveActivity {
            if let destinationVC = segue.destination as? ViewController {
                destinationVC.playerXName = playerXnameField.text ?? "X"
                destinationVC.playerOName = playerONameFIeld.text ?? "O"
            }
        }
    }
    @objc func textFieldDidChange(_ textField: UITextField) {
        if playerXnameField.text != "" && playerONameFIeld.text != "" {
            saveAndStartButton.isHidden = false
        }
    }
}
