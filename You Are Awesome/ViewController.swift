//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Jess Newman on 1/21/18.
//  Copyright © 2018 Newman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    var index = 0
    
    
    //Code below executes when the app's view first loads

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You are fantastic",
                        "You are great!",
                        "You are amazing!",
                        "When the genius bar needs help, they call you",
                        "you brighten my day",
                        "You are da bomb!",
                        "I can't wait to use this app"]
        

        
        messageLabel.text = messages[index]
        index = index + 1
        
        if index == messages.count {
            index = 0
        }
        
        
//        let message1 = "Fantastic!!!!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        } else {
//        messageLabel.text = message1
//    }
    
}

}
