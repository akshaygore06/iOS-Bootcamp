//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Akshay Gore on 4/5/18.
//  Copyright © 2018 Akshay Gore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var imageView: UIImageView!

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImage()
    }
    
    func updateBallImage(){
        var randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

