//
//  ViewController.swift
//  Magic8Ball
//
//  Created by saikat jaman on 26/05/2019.
//  Copyright © 2019 saikat jaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5", ]
    @IBOutlet weak var magicBallimageView: UIImageView!
    
    var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateMagicBall()
    }
    

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateMagicBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateMagicBall()
        
    }
    func updateMagicBall() {
        
        randomBallNumber = Int.random(in: 0 ... 4)
        magicBallimageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

