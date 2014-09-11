//
//  ViewController.swift
//  Postcard
//
//  Created by Bradley White on 9/9/14.
//  Copyright (c) 2014 Code by Brad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var messageLabel: UILabel!
    
    @IBOutlet var enterNameTextField: UITextField!
    
    @IBOutlet var enterMessageTextField: UITextField!
    
    @IBOutlet var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = "Hi " + enterNameTextField.text + ", " + enterMessageTextField.text
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

