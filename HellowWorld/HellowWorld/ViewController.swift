//
//  ViewController.swift
//  HellowWorld
//
//  Created by Yuqi Zhang on 06/11/2017.
//  Copyright © 2017 Yuqi Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!

    @IBAction func buttonPress(_ sender: UIButton) {
        myLabel.text = "Hello World"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

