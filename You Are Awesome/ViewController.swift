//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Jess Newman on 1/21/18.
//  Copyright © 2018 Newman. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    
    
    
    var index = -1
    var imageNumber = -1
    var soundNumber = -1
    let numberOfImages = 5
    let numberOfSounds = 2
    
    //Code below executes when the app's view first loads

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(soundName: String) {
        if let sound = NSDataAsset(name: soundName) {
            //Check if sound.dta is a sound file
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
                
            } catch {
                
                //if sound.data is not a valid audio file
                print("ERROR: data in \(soundName) couldn't be played as a sound." )
                
            }
            
        } else {
            //if reading in the NSDataAsset didn't work, tell the developer to report the error
            print("ERROR: file\(soundName) didn't load")
        }
        
    }
    
    
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat
            {
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        }
        while lastNumber == newIndex
            return newIndex

        
        }
    
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You are fantastic",
                        "You are great!",
                        "You are amazing!",
                        "When the genius bar needs help, they call you",
                        "you brighten my day",
                        "You are da bomb!",
                        "I can't wait to use this app",
                        "Fabulous? That's You!"]
    
        // show a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //Show an image
        awesomeImage.isHidden = false
        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "image\(imageNumber)")
        
        //Play a soundInt
        soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)
        let soundName = "sound\(soundNumber)"

        //Play a sound randomly
        playSound(soundName: soundName)
        
        
    }
    
//        var randomIndex =
//            Int(arc4random_uniform(UInt32(messages.count)))
//
//        messageLabel.text = messages[randomIndex]
        
//        messageLabel.text = messages[index]
//        index = index + 1
//
//        if index == messages.count {
//            index = 0
//        }
        
        
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


