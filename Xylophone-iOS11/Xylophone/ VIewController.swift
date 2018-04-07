//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playNote(tag: sender.tag)
    }
    
    func playNote(tag : Int) {
        var resourceName : String

        if tag == 1 {
            resourceName = "note1"
        } else if tag == 2 {
            resourceName = "note2";
        } else if tag == 3 {
            resourceName = "note3";
        } else if tag == 4 {
            resourceName = "note4";
        } else if tag == 5 {
            resourceName = "note5";
        }else if tag == 6 {
            resourceName = "note6";
        } else {
            resourceName = "note7";
        }
        
        // create a resource url
        let url = Bundle.main.url(forResource: resourceName, withExtension: "wav")
        
        // create player
        do {
            player = try AVAudioPlayer(contentsOf: url!)
        } catch let error {
            print(error.localizedDescription)
        }
        
        // play note
        player.play()
    }
}

