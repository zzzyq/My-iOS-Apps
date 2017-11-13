//
//  ViewController.swift
//  WhatsTheNumber
//
//  Created by Yuqi Zhang on 06/11/2017.
//  Copyright © 2017 Yuqi Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!

    @IBOutlet weak var inputTextField: UITextField!
    var answer = Int(arc4random_uniform(100) + 1)
    var maxNumber = 100
    var minNumber = 1
    var isOver = false
    
    @IBAction func makeAGuess(_ sender: UIButton) {
        if isOver == false {
            //play game
            print("answer = \(answer)")
            let inputText = inputTextField.text!
            let inputNumber = Int(inputText)
            //clear textfield
            inputTextField.text = ""
            print("inputNumber = \(inputNumber)")
            
            if inputNumber == nil {
                // no input
                messageLabel.text = "No input! Guess a number between \(minNumber) ~ \(maxNumber)"
            }
            else {
                // got input
                if inputNumber! > maxNumber {
                    //user input too large
                    messageLabel.text = "Too large! Guess a number between \(minNumber) ~ \(maxNumber)"
                }
                else if inputNumber! < minNumber {
                    //user input too small
                    messageLabel.text = "Too small! Guess a number between \(minNumber) ~ \(maxNumber)"
                }
                else {
                    //check answer
                    if inputNumber == answer {
                        messageLabel.text = "You are right! Press [Guess] to play again."
                        isOver = true
                    }
                    else {
                        if inputNumber! > answer {
                            //larger than answer
                            maxNumber = inputNumber!
                        }
                        else {
                            //small than answer
                            minNumber = inputNumber!
                        }
                        messageLabel.text = "Try again! Guess a number between \(minNumber) ~ \(maxNumber)"
                    }
                    
                }
            }
        }
        else {
            //game is over
            maxNumber = 100
            minNumber = 1
            messageLabel.text = "Guess a number between \(minNumber) ~ \(maxNumber)"
            answer = Int(arc4random_uniform(100) + 1)
            isOver = false
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Push the keyboard up
        inputTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

