//
//  ViewController.swift
//  soundShaker
//
//  Created by Yisen on 6/21/15.
//  Copyright (c) 2015 Yisen. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
    var sounds = ["03","1a1a1","bach1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        
        if event.subtype == UIEventSubtype.MotionShake {
            
            var randomNumber = Int(arc4random_uniform(UInt32(sounds.count - 1)))
            
            
            var filelocation = NSBundle.mainBundle().pathForResource(sounds[randomNumber], ofType: "mp3")
            
            var error : NSError? = nil
            
            player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: filelocation!), error: &error)
            
            player.play()
            
            
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}