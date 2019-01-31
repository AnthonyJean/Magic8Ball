//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Anthony Jean on 30/01/2019.
//  Copyright © 2019 Anthony Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = Int()
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

